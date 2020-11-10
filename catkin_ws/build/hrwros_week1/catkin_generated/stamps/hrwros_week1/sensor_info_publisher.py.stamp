## Node to publish a sensor information to a topic.
import rospy
from hrwros_msgs.msg import SensorInformation

def getSensorData(time):
    return float(time)

def sensor_info_publisher():
    si_publisher = rospy.Publisher('sensor_info', SensorInformation, queue_size = 10)
    rospy.init_node('sensor_device', anonymous = False)
    rate = rospy.Rate(10)
    
    # The string to be published on the topic.
    sensor_info = SensorInformation()

    # Sensor Header Info
    sensor_info.sensor_data.header.stamp = rospy.Time.now()
    sensor_info.sensor_data.header.frame_id = "distance_sensor_frame"

    # Sensor Data Info
    sensor_info.sensor_data.radiation_type = sensor_info.sensor_data.ULTRASOUND
    sensor_info.sensor_data.field_of_view = 0.5
    sensor_info.sensor_data.min_range = 0.02
    sensor_info.sensor_data.max_range = 2.0

    # Sensor MFR Info
    sensor_info.maker_name = 'sensor_mkr'
    sensor_info.part_number = 123456

    rospy.loginfo('All went well. Publishing topic')
    
    while not rospy.is_shutdown():
        # get data from simulated sensor function
        sensor_info.sensor_data.range = getSensorData(rospy.Time.now().nsecs)

        # publish updated sensor data
        si_publisher.publish(sensor_info)
        rate.sleep()

if __name__== '__main__':
    try:
        sensor_info_publisher()
    except rospy.ROSInterruptException:
        pass