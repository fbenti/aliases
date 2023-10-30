#!/bin/sh 

mbzircStr="source /opt/ros/humble/setup.bash ; cd ~/ros2_ws ; source install/local_setup.bash"

# source alias
tmux new-session -s "mbzirc_sess" -d

tmux split-window -v
tmux split-window -h -t 0
tmux split-window -h -t 2


# initial commands

tmux send-keys -t 0 "${mbzircStr}; qsr m" C-m

tmux send-keys -t 1 "${mbzircStr}; qsr cd" C-m

tmux send-keys -t 2 "${mbzircStr}; cd ; bash tmuxStart_rosbag.sh" C-m

tmux send-keys -t 3 "${mbzircStr}; qsr build " C-m


tmux -2 attach-session -d
