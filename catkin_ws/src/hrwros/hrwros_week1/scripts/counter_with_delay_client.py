# counter_with_delay action client
import sys

import actionlib
import rospy

from actionlib_msgs.msg import GoalStatus
from hrwros_week1.msg import counter_with_delayAction, counter_with_delayFeedback, counter_with_delayGoal, counter_with_delayResult


def sub_action(state, idx, client):
    for index in range(idx, 10):
        if idx + 1 == 10:
            state = True
            rospy.loginfo("Finished sub-action; jumping out of loop.")
            return state, idx
        
        print(f"...doing things {idx, index}...")
        rospy.sleep(0.1)
        
        # simple_state variables
        # 0: cancelled
        # 1: active
        # 2: done
        if client.simple_state == 2:
            # return the result of the Action
            state = True
            return state, idx
    idx += 1
    return state, idx


def counter_with_delay_client(goal):
    # create action client
    client = actionlib.SimpleActionClient('counter_with_delay', counter_with_delayAction)

    # wait for the server to be available
    client.wait_for_server()
    rospy.loginfo("Waiting for server...")

    # create goal
    goal = counter_with_delayGoal(counter_target= goal)

    # send goal
    client.send_goal(
        goal,
        active_cb = active_cb,
        done_cb = done_cb,
        feedback_cb=feedback_cb)
    rospy.loginfo("Goal has been sent to Action Server...")

    # doing something else here
    completed = False
    idx = 0
    while not completed:
        completed, idx = sub_action(completed, idx, client)
    if client.wait_for_result():
        return client.get_result()


def active_cb():
    rospy.loginfo("Action now active")
    
    
def done_cb(state, result):
    if state == GoalStatus.SUCCEEDED:
        rospy.loginfo(f"{result.result_response}")


def feedback_cb(feedback):
    rospy.loginfo(f"Feedback: {feedback}")


if __name__ == "__main__":
    try:
        goal = int(rospy.get_param('/counter_with_delay_client/goal_value'))
    except KeyError:
        goal = int(sys.argv[1])
    
    try:
        rospy.init_node('counter_with_delay_client')
        result = counter_with_delay_client(goal)
        rospy.loginfo(f"Result: {result.result_response}")
    except rospy.ROSInterruptException as rosx:
        rospy.logerror(f"Program Interrupted: {rosx}")
