cmake_minimum_required(VERSION 2.8.3)
project(gesture_msgs)
find_package(catkin REQUIRED COMPONENTS roscpp std_msgs message_generation roslib)
add_message_files(
  FILES
  KeyframeGesture.msg
  GestureStatus.msg
)
generate_messages(
  DEPENDENCIES std_msgs
)
catkin_package(
  INCLUDE_DIRS
  CATKIN_DEPENDS roscpp roslib message_runtime std_msgs
  DEPENDS
)
include_directories(${catkin_INCLUDE_DIRS})
