# counter_with_delay action server
import sys

import actionlib
import rospy

from hrwros_week1.msg import counter_with_delayAction, counter_with_delayFeedback, counter_with_delayResult

class CounterWithDelayActions(object):
    # create msgs used to publish feedback/result
    _feedback = counter_with_delayFeedback()
    _result = counter_with_delayResult()


    def __init__(self, name, delay):
        # name of action server
        self._action_name = name
        self._delay = delay

        # instantiates action server of same name
        self._as = actionlib.SimpleActionServer(self._action_name, counter_with_delayAction, execute_cb=self.execute_cb, auto_start = False)

        # start the action server
        self._as.start()
        rospy.loginfo(f"Action Server <{self._action_name}> Started; Delay Set at {self._delay}s")
    
    def execute_cb(self, goal):
        # delay value
        r = rospy.Rate(self._delay)

        # success flag variable
        success = True

        # initialize the feedback value
        self._feedback.counter_current = 0

        # publish execution statement
        rospy.loginfo(f"Counting to {goal}...")

        # being executing
        for counter_idx in range (0, goal.counter_target):
            if self._as.is_preempt_requested():
                rospy.loginfo(f"{self._action_name}: Preempted")
                self._as.set_preempted()
                success = False
                break
            
            # publish feedback
            self._feedback.counter_current = counter_idx
            self._as.publish_feedback(self._feedback)

            # delay for period
            r.sleep()

        if success:
            self._result.result_response = f"Successfully completed counting to {goal.counter_target}"
            rospy.loginfo(f"{self._action_name}: Action Successful.")
            self._as.set_succeeded(self._result)

if __name__ == "__main__":
    # init ROS Action Server node
    rospy.init_node('counter_with_delay')
    
    try:
        delay_value = int(rospy.get_param('/counter_with_delay_server/delay_value'))
    except KeyError:
        delay_value = int(sys.argv[1])
    
    # create server instance
    server = CounterWithDelayActions(rospy.get_name(), delay_value)
    rospy.spin()
