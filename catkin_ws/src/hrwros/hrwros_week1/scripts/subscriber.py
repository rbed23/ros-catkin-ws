## Node to subscribe to a string and print the string on terminal.
import rospy
from std_msgs.msg import String

# Topic callback function.
def stringListenerCallback(data):
    rospy.loginfo(' The contents of topic1: %s', data.data)

def stringListener():
    rospy.init_node('node_2' , anonymous = False)
    
    rospy.Subscriber('topic_1' , String, stringListenerCallback)
    
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    stringListener()