#! /usr/bin/env python3


import actionlib
import roslib
roslib.load_manifest('chores')
import rospy

from chores.msg import fibonacciAction, fibonacciFeedback, fibonacciResult


class FibonacciAction(object):
    # create messages that are used to publish feedback/result
    _feedback = fibonacciFeedback()
    _result = fibonacciResult()

    def __init__(self, name):
        self._action_name = name
        self._as = actionlib.SimpleActionServer(self._action_name, fibonacciAction, execute_cb=self.execute_cb, auto_start = False)
        self._as.start()
      
    def execute_cb(self, goal):
        # helper variables
        r = rospy.Rate(5)
        success = True
        
        # append the seeds for the fibonacci sequence
        self._feedback.sequence = []
        self._feedback.sequence.append(0)
        self._feedback.sequence.append(1)
        
        # publish info to the console for the user
        rospy.loginfo(f'{self._action_name}: Executing, creating fibonacci '
            f'sequence of order {goal.order} '
            f'with seeds {self._feedback.sequence[0]}, {self._feedback.sequence[1]}')
        
        # start executing the action
        for i in range(1, goal.order):
            # check that preempt has not been requested by the client
            if self._as.is_preempt_requested():
                rospy.loginfo('%s: Preempted' % self._action_name)
                self._as.set_preempted()
                success = False
                break
            self._feedback.sequence.append(self._feedback.sequence[i] + self._feedback.sequence[i-1])
            # publish the feedback
            self._as.publish_feedback(self._feedback)
            # this step is not necessary, the sequence is computed at 1 Hz for demonstration purposes
            r.sleep()
          
        if success:
            self._result.sequence = self._feedback.sequence
            rospy.loginfo(f"{self._action_name}: Succeeded")
            rospy.loginfo(f"{self._feedback.sequence}")
            self._as.set_succeeded(self._result)
        
if __name__ == '__main__':
    rospy.init_node('fibonacci')
    server = FibonacciAction(rospy.get_name())
    rospy.spin()