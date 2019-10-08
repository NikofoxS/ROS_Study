# moveit_gazebo  
## Introduction
Manipulator simulation based on [MoveIt](https://moveit.ros.org/), [ros_control](http://wiki.ros.org/ros_control) and [Gazebo](http://gazebosim.org/).  
The development environment: Ubuntu16.04; ROS_Kinetic Kame; gazebo7  
Simulation interface with rviz and gazebo:  
![gp7_gazebo.gif](https://raw.githubusercontent.com/foxchys/ROS_Study/master/moveit_gazebo/pictures/gp7_gazebo.gif)  
The robot used in this example is [yaskawa_motoman_gp7](https://www.motoman.com/en-us/products/robots/industrial/assembly-handling/gp-series/gp7).  
The original manipulator model can be downloaded at [motoman_gp7_support](https://github.com/ros-industrial/motoman/tree/kinetic-devel/motoman_gp7_support).  
This package contains the implementation of yaskawa_motoman_gp7 push block:  
![gp7_push.gif](https://raw.githubusercontent.com/foxchys/ROS_Study/master/moveit_gazebo/pictures/gp7_push.gif)  
## Usage  
Creat a ros_workspace:  
```
mkdir -p gp7gazebo_ws/src/
cd gp7gazebo_ws/
catkin_make
```  
Download this package and copy the package to "gp7gazebo_ws/src/":  
```
cp -r moveit_gazebo gp7gazebo_ws/src/
```  
Install dependencies:  
```
sudo apt-get update
rosdep update
rosdep install --from-paths . --ignore-src --rosdistro kinetic -y
```  
Compile and launch:  
```
catkin_make
source devel/setup.bash
rospack profile
roslaunch robot_work start_robot_table_cube.launch
```  
That's all.  

## Postscript  
"No p gain specified for pid" is not an ERROR.For details [click](https://answers.ros.org/question/293830/what-is-the-fix-for-no-p-gain-specified-for-pid-namespace-gazebo_ros_controlpid_gainsback_right_wheel_joint-ros-melodic/).  

## Reference  
[1]http://gazebosim.org/tutorials?cat=connect_ros  
[2]https://ros-planning.github.io/moveit_tutorials/  



Foxchys  
Email: chy_s@outlook.com
