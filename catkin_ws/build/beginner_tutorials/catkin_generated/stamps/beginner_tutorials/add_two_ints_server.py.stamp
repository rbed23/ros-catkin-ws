#!/usr/bin/env python
from __future__ import print_function
from beginner_tutorials.srv import add_two_ints,add_two_intsResponse
import rospy

def handle_add_two_ints(req):
    print(f"Returning [{req.a} + {req.b} = {req.a + req.b}]")
    return add_two_intsResponse(req.a + req.b)
 
def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', add_two_ints, handle_add_two_ints)
    print("Ready to add two ints.")
    rospy.spin()

if __name__ == "__main__":
    add_two_ints_server()