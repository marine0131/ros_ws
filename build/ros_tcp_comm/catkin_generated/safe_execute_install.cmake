execute_process(COMMAND "/home/whj/catkin_ws/build/ros_tcp_comm/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/whj/catkin_ws/build/ros_tcp_comm/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
