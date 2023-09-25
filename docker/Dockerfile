FROM ros:noetic-ros-base-focal

RUN apt-get update -y
RUN apt-get install ros-noetic-gazebo-ros -y
RUN apt-get install ros-noetic-gazebo-ros-pkgs -y
RUN apt-get install ros-noetic-robot-state-publisher -y
RUN apt-get install ros-noetic-tf2-ros -y
RUN apt-get install libignition-math4-dev -y
RUN apt-get install ros-noetic-rviz -y

RUN apt-get install -qqy x11-apps
ENV DISPLAY :0
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install ros-noetic-turtlebot3 -y
RUN apt-get install ros-noetic-turtlebot3-gazebo -y
RUN apt-get install ros-noetic-slam-gmapping -y
RUN apt-get install ros-noetic-navigation -y
RUN apt-get install ros-noetic-rqt -y
RUN apt-get update -y
RUN apt-get install ros-noetic-rqt-common-plugins -y --fix-missing
RUN apt-get install ros-noetic-slam-toolbox -y

RUN apt install ros-noetic-robot-controllers -y
RUN apt install ros-noetic-rtabmap-ros -y
RUN apt install ros-noetic-plotjuggler-ros -y
RUN apt install -y ros-noetic-multirobot-map-merge ros-noetic-explore-lite

RUN apt install ros-noetic-control-toolbox -y
RUN apt install ros-noetic-fetch-calibration -y
RUN apt install ros-noetic-fetch-open-auto-dock -y
RUN apt install ros-noetic-fetch-navigation -y
RUN apt install ros-noetic-fetch-tools -y
RUN apt install ros-noetic-rgbd-launch -y
RUN apt install ros-noetic-moveit-core -y
RUN apt-get install ros-noetic-teleop-twist-keyboard -y

RUN mkdir -p ~/catkin_ws/src

RUN touch ~/.bashrc
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN echo "source \$HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
RUN echo "alias plot=\"rosrun plotjuggler plotjuggler\"" >> ~/.bashrc
RUN echo "alias sb=\"source \$HOME/.bashrc\"" >> ~/.bashrc
RUN echo "function cw() { cd ~/catkin_ws; }" >> ~/.bashrc
RUN echo "function cm() { cw; catkin_make;}" >> ~/.bashrc
RUN echo "export TURTLEBOT3_MODEL=waffle_pi" >> ~/.bashrc
RUN echo "export GAZEBO_MODEL_PATH=\$GAZEBO_MODEL_PATH:\$HOME/catkin_ws/src/gazebo_models_worlds_collection/models" >> ~/.bashrc
RUN echo "export GAZEBO_MODEL_PATH=\$GAZEBO_MODEL_PATH:\$HOME/catkin_ws/src/aws-robomaker-small-warehouse-world/models" >> ~/.bashrc
RUN echo "export GAZEBO_PLUGIN_PATH=\$GAZEBO_PLUGIN_PATH:\$HOME/catkin_ws/devel" >> ~/.bashrc
# RUN source ~/.bashrc

# CMD ["./ros_entrypoint.sh"]
CMD ["bash"]
