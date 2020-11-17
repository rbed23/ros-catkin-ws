#! /usr/bin/env python3

import rospy

from hrwros_msgs.srv import meters_2_feet as m2f, meters_2_feetResponse as m2fR

_CONV_FCT = 3.28 # meters to ft conversion factor

def process_service_request(req):
    # initializing Response variable
    response = m2fR()

    rospy.loginfo(f"Requesting <{req}> to be converted...")

    # validating positive number    
    if(req.measurement_meters < 0):
        response.success = False
        response.measurement_feet = -0.0001
    
    # converting from meters to feet
    else:
        response.success = True
        response.measurement_feet = _CONV_FCT * req.measurement_meters
    
    rospy.loginfo(f"Converted: {response.success}  Value: {response.measurement_feet}")
    
    # returning response object to client
    return response


def meters_2_feet_server():
    name = meters_2_feet_server.__name__
    rospy.init_node(name)
    srvc = rospy.Service(name, m2f, process_service_request)
    rospy.loginfo(f"Service Server <{name}> Started; Ready to Convert...")
    rospy.spin()


if __name__ == "__main__":
    meters_2_feet_server()