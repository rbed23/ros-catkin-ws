# counter_with_delay action client
import sys

import actionlib
import rospy

from actionlib_msgs.msg import GoalStatus
from hrwros_week1.msg import counter_with_delayAction, counter_with_delayFeedback, counter_with_delayGoal, counter_with_delayResult

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
    for idx in range(0, 10):
        print(f"...doing things {idx}...")
        rospy.sleep(0.5)
        
        # simple_state variables
        # 0: cancelled
        # 1: active
        # 2: done
        if client.simple_state == 2:
            # return the result of the Action
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
