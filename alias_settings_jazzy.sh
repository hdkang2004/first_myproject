
ID=13

alias sb="source ~/.bashrc; echo \"bashrc is reloaded !! \""

alias ros_domain="export ROS_DOMAIN_ID=\$ID; echo \"ROS_DOMAIN_ID is set to \$ID\""
alias active_venv_jazzy="source ~/venv/jazzy/bin/activate; echo \"Venv Jazzy is activated. \""
alias jazzy="source /opt/ros/jazzy/setup.bash; ros_domain; echo \"ROS2 Jazzy is activated !!\""

alias jazzy2="active_venv_jazzy; source /opt/ros/jazzy/setup.bash; ros_domain; echo \"ROS2 Jazzy is activated !!\""
ws_setting()
{
	jazzy
	source ~/$1/install/local_setup.bash
        echo "$1 workspace is activated."
        cd ~/$1/
}

get_status()
{
	if [ -z $ROS_DOMAIN_ID ]; then
		echo "ROS_DOMAIN_ID : 0"
	else
		echo "ROS_DOMAIN_ID : $ROS_DOMAIN_ID"
	fi

	if [ -z $ROS_LOCALHOST_ONLY ]; then
		echo "ROS_LOCALHOST_ONLY : 0"
	else
		echo "ROS_LOCALHOST_ONLY : $ROS_LOCALHOST_ONLY"
	fi
}

GREEN='\[\e[1;32m\]'
BLUE='\[\e[1;34m\]' 
NC='\[\e[0m\]'

PS1="${BLUE}(ID: \${ROS_DOMAIN_ID:-0})${GREEN}\u${NC}:${BLUE}\w${NC}\$ "

alias ros2study="ws_setting \"ros2_study\""
alias mytftutorials="ws_setting \"my_tf_tutorials\""
alias pinky="ws_setting pinky \"pinky\""
alias robotws="ws_setting \"robot_ws\""


