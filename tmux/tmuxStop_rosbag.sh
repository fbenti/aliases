#!/bin/sh 

pid=$(ps aux | grep "/opt/ros/humble/bin/ros2 bag record" | grep -v grep | awk '{print $2}')

for i in ${pid[0]}
do
    :
    echo "Killing PID $i"
    kill -INT "$i"
done

tmux kill-session -t "rosbag2"