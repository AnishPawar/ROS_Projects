#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64
counter = 0
def callback(msg):
    global counter
    rospy.loginfo("I heard ")

    counter = counter + msg.data
    # print(new_msg)
    rospy.loginfo(counter)

def subscriber():
    rospy.init_node('Number_Subscriber',anonymous= True)
    rospy.Subscriber('Number_Exchange',Int64,callback)
    rospy.spin()

if __name__ == "__main__":
    try:
        subscriber()
    except rospy.ROSInterruptException:
        pass