# gesture_player_msgs

[![Build Status](https://travis-ci.org/arnaud-ramey/gesture_player_msgs.svg)](https://travis-ci.org/arnaud-ramey/gesture_player_msgs)

Contains the required messages for generating gestures on robots with several degrees of freedom.
There are several ways to use the gestures:

* Using KeyframeGesture (gesture_player_ros.h):

```bash
#include "gesture_player_ros.h"
ros::NodeHandle nh_public;
ros::Publisher pub = nh_public.advertise<gesture_player::KeyframeGesture>
    ("gestures", 1);
gesture_player::KeyframeGesture gesture;
gesture_io::set_joint_at_given_time(gesture, "joint2", "0", 0);
gesture_io::set_joint_at_given_time(gesture, "joint1", "0.5", 0.5);
gesture.header.stamp = ros::Time::now();
pub.publish(gesture);
```

* Loose dependency:
  If you just want to play pre-recorded gestures, you can avoid the dependency to this package.
  Knowing that `gesture_player::gesture_filename_topic = "keyframe_gesture_filename"`,
  you can do:

```bash
#include <std_msgs/String.h>
ros::NodeHandle nh_public;
ros::Publisher pub = nh_public.advertise<std_msgs::String>("keyframe_gesture_filename");
std_msgs::String msg;
msg.data = "flori_yes_mute";
pub.publish(msg);
```

  The gesture are in `"gesture_player_msgs/data/"`, you can list them with:

```bash
$ rosls gesture_player_msgs/data/ -1
```


