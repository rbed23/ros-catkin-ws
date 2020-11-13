#!/usr/bin/env python3

import actionlib
import roslib
roslib.load_manifest('chores')
import rospy

from chores.msg import do_dishesAction, do_dishesGoal


if __name__ == '__main__':
    rospy.init_node('do_dishes_client')
    client = actionlib.SimpleActionClient('do_dishes', do_dishesAction)
    client.wait_for_server()

    goal = do_dishesGoal()
    # Fill in the goal here
    goal.dishwasher_id = 12345

    client.send_goal(goal)
    client.wait_for_result(rospy.Duration.from_sec(5.0))
    print(f"Action Update <{goal}>: {client.get_goal_status_text()}; {client.get_result()}")
