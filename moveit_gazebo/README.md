# moveit_gazebo  
## Introduction
Manipulator simulation based on [MoveIt](https://moveit.ros.org/), [ros_control](http://wiki.ros.org/ros_control) and [Gazebo](http://gazebosim.org/).  
Test environment: Ubuntu16.04; ROS_Kinetic Kame; gazebo7  
Simulation interface with rviz and gazebo:  
![gp7_gazebo.gif](https://raw.githubusercontent.com/foxchys/ROS_Study/master/moveit_gazebo/pictures/gp7_gazebo.gif)  
The robot used in this example is [yaskawa_motoman_gp7](https://www.motoman.com/en-us/products/robots/industrial/assembly-handling/gp-series/gp7).  
The original manipulator model can be downloaded at [motoman_gp7_support](https://github.com/ros-industrial/motoman/tree/kinetic-devel/motoman_gp7_support).  
Pushing a cube with yaskawa_motoman_gp7:  
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
Something about [moveit_cpp_api](http://docs.ros.org/kinetic/api/moveit_tutorials/html/doc/move_group_interface/move_group_interface_tutorial.html#getting-started):  
```
roslauch robot_work motoman_moveit_api_test.launch
```  
Jog based on [moveit_jog_arm](https://github.com/ros-planning/moveit/tree/master/moveit_experimental/moveit_jog_arm):  

1.  sikp `roslaunch robot_work start_robot_table_cube.launch`
2. `roslaunch robot_work gp7_jog_teach.launch`

Single joint jog:  
```
rostopic pub -1 /jog_server/joint_delta_jog_cmds control_msgs/JointJog "header: auto
joint_names: ['joint_5_b']
displacements: [0]
velocities: [-0.3]
duration: 0.0"
```  
![gp7_joint_jog.gif](https://raw.githubusercontent.com/foxchys/ROS_Study/master/moveit_gazebo/pictures/gp7_joint_jog.gif)  
End-effector jog:  
```
rostopic pub -r 100 /jog_server/delta_jog_cmds geometry_msgs/TwistStamped "header: auto
twist:
  linear:
    x: 0.0
    y: 0.00
    z: -0.1
  angular:
    x: 0.0
    y: 0.0
    z: 0.0"
```  
![gp7_jog_ef.gif](https://raw.githubusercontent.com/foxchys/ROS_Study/master/moveit_gazebo/pictures/gp7_jog_ef.gif)  
Switch Controller：  
```
rosservice call /gp7_yaskawa/controller_manager/switch_controller "start_controllers:
- 'gp7_yaskawa_controller'
stop_controllers:
- 'gp7_joint_group_position_controller'
strictness: 2"
```  

To be continued.  

## Postscript  
"No p gain specified for pid" is not an ERROR.For details [click](https://answers.ros.org/question/293830/what-is-the-fix-for-no-p-gain-specified-for-pid-namespace-gazebo_ros_controlpid_gainsback_right_wheel_joint-ros-melodic/).  

## Reference  
[1]http://gazebosim.org/tutorials?cat=connect_ros  
[2]https://ros-planning.github.io/moveit_tutorials/  



Foxchys  
Email: chy_s@outlook.com
