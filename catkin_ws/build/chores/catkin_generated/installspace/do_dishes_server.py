#!/usr/bin/env python3

import time
import actionlib
import roslib
roslib.load_manifest('chores')
import rospy

from chores.msg import do_dishesAction, do_dishesFeedback, do_dishesResult

class DoDishesServer:
  def __init__(self):
    self.server = actionlib.SimpleActionServer('do_dishes', do_dishesAction, self.execute, False)
    print(f"initializing...")
    self.server.start()

  def execute(self, goal):
    # Do lots of awesome groundbreaking robot stuff here
    fb = do_dishesFeedback()
    result = do_dishesResult()
    print(f"executing...")
    print(goal)
    try: 
      time.sleep(2)
      fb.percent_complete = 100
      result.total_dishes_cleaned = 13
      self.server.set_succeeded(result=result, text=f"{fb.percent_complete}% dishes done")
      print(f"Action <{goal.dishwasher_id}> Complete")
    except Exception as e:
      print(f"Action Exception Encountered: {e}")

if __name__ == '__main__':
  rospy.init_node('do_dishes_server')
  server = DoDishesServer()
  rospy.spin()