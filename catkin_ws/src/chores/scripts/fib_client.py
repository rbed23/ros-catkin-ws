#! /usr/bin/env python3

import sys

import rospy
# Brings in the SimpleActionClient
import actionlib
from actionlib_msgs.msg import GoalStatus, GoalStatusArray
# Brings in the messages used by the fibonacci action, including the
# goal message and the result message.
from chores.msg import fibonacciAction, fibonacciGoal, fibonacciActionResult

current_seq = None
current_order = None

def fb_callback(feedback):
    global current_seq
    global current_order
    current_seq = feedback
    rospy.loginfo(f"Sequence status: {len(current_seq.sequence)-1}/{current_order}")


def done_callback(state, result):
    if state == GoalStatus.SUCCEEDED:
        print(f"Action Successful!")
    print(f"{', '.join([str(n) for n in result.sequence])}")


def active_callback():
    print("Action now active")


def fibonacci_client(order):
    # Creates the SimpleActionClient, passing the type of the action
    # (FibonacciAction) to the constructor.
    client = actionlib.SimpleActionClient('fibonacci', fibonacciAction)

    # Waits until the action server has started up and started
    # listening for goals.
    client.wait_for_server()

    # Creates a goal to send to the action server.
    global current_order
    current_order = order
    goal = fibonacciGoal(order=order)

    # Create Action Result variable
    result = fibonacciActionResult()

    # Initial state of result
    result.header.stamp = rospy.Time.now()
    result.status.goal_id.id = f"{goal.order}_{rospy.Time.now()}"
    result.status.status = client.get_state()
    result.status.text = "initialized"

    # Sends the goal to the action server.
    client.send_goal(
        goal,
        active_cb=active_callback,
        done_cb=done_callback,
        feedback_cb=fb_callback)

    # Waits for the server to finish performing the action.
    if client.wait_for_result(timeout=rospy.Duration(2)):
        if client.get_state() == GoalStatus.SUCCEEDED:
            # Prints out the result of executing the action
            result.result = client.get_result()
            result.status.goal_id.stamp = rospy.Time.now()
            result.status.status = client.get_state()
            result.status.text = "succeeded"
            return result  # A FibonacciResult
    else:
        while True:
            print("Interrupted; still active")
            result.status.goal_id.stamp = rospy.Time.now()
            result.status.status = GoalStatus.ACTIVE
            result.status.text = "active"
            if client.wait_for_result(timeout=rospy.Duration(2)):
                result.status.goal_id.stamp = rospy.Time.now()
                result.result = client.get_result()
                result.status.status = GoalStatus.SUCCEEDED
                result.status.text = "succeeded"
                return result



if __name__ == '__main__':
    try:
        # Initializes a rospy node so that the SimpleActionClient can
        # publish and subscribe over ROS.
        order = int(sys.argv[1])
        rospy.init_node('fibonacci_client_py')
        res = fibonacci_client(order)
        print(res)
    except rospy.ROSInterruptException:
        print("program interrupted before completion", file=sys.stderr)