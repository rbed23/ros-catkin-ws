#! /usr/bin/env python3

import numpy as np
import rospy

from hrwros_msgs.srv import meters_2_feet as m2f, meters_2_feetResponse as m2fR

_CONV_FCT = 1 / 3.28 # meters to ft conversion factor

def process_service_request(req):
    res = m2fR

    if(req.measurement_meters