## Node to subscribe to a string and print the string on terminal.
import rospy
from hrwros_msgs.msg import SensorInformation

# Topic callback function.
def stringListenerCallback(data):
    rospy.loginfo(f"The range is {data.sensor_data.range}")

def stringListener():
    rospy.init_node('sensor_listener' , anonymous = False)
    
    rospy.Subscriber('sensor_info' , SensorInformation, stringListenerCallback)
    
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    stringListener()