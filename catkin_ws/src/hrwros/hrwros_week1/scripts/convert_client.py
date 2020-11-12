#! /usr/bin/env python3

import sys

import rospy

from hrwros_msgs.srv import meters_2_feet as m2f, meters_2_feetResponse as m2fR


def meters_2_feet_client(meters):
    # waiting for service server to spin up
    rospy.wait_for_service('meters_2_feet')
    
    try:
        # create a service proxy
        meters_2_feet = rospy.ServiceProxy('meters_2_feet', m2f)
        
        # call / execute service function
        response = meters_2_feet(meters)
        
        if response.success:
            return response.measurement_feet
        else:
            return "<-inf>"

    except rospy.ServiceException as e:
        print(f"Service call failed: {e}")


def usage():
    return f"{sys.argv[0]} [m]"


if __name__ == "__main__":
    if len(sys.argv) == 2:
        m = int(sys.argv[1])
    else:
        print(usage())
        sys.exit(1)
    print(f"Requesting conversion of '{m}' meters to feet... ")
    print(f"{m} meters is equal to {meters_2_feet_client(m)} feet!")