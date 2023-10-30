#!/bin/sh 

mbzircStr="source /opt/ros/humble/setup.bash ; cd ~/ros2_ws ; source install/local_setup.bash"
quickSetup="source ~/ros2_ws/src/marker_localization_with_controller/quick_setup_autocomplete.bash"

tmux new-session -s rosbag2 -d
# tmux attach-session -t "rosbag"
# tmux send-keys -t "rosbag2" "echo 'Start recording rosbag'" C-m
tmux send-keys -t "rosbag2" "${mbzircStr} ; cd rosbags ; nohup ros2 bag record /optitrack_odometry /camera_raw_odometry /px4_odometry /camera_odometry /image_info " C-m


# tmux detach-client -s "rosbag2"