# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_tcp_comm: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iros_tcp_comm:/home/whj/catkin_ws/src/ros_tcp_comm/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_tcp_comm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg" NAME_WE)
add_custom_target(_ros_tcp_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tcp_comm" "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg" NAME_WE)
add_custom_target(_ros_tcp_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tcp_comm" "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_tcp_comm
  "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tcp_comm
)
_generate_msg_cpp(ros_tcp_comm
  "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tcp_comm
)

### Generating Services

### Generating Module File
_generate_module_cpp(ros_tcp_comm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tcp_comm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_tcp_comm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_tcp_comm_generate_messages ros_tcp_comm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg" NAME_WE)
add_dependencies(ros_tcp_comm_generate_messages_cpp _ros_tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg" NAME_WE)
add_dependencies(ros_tcp_comm_generate_messages_cpp _ros_tcp_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tcp_comm_gencpp)
add_dependencies(ros_tcp_comm_gencpp ros_tcp_comm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tcp_comm_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_tcp_comm
  "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tcp_comm
)
_generate_msg_lisp(ros_tcp_comm
  "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tcp_comm
)

### Generating Services

### Generating Module File
_generate_module_lisp(ros_tcp_comm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tcp_comm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_tcp_comm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_tcp_comm_generate_messages ros_tcp_comm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg" NAME_WE)
add_dependencies(ros_tcp_comm_generate_messages_lisp _ros_tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg" NAME_WE)
add_dependencies(ros_tcp_comm_generate_messages_lisp _ros_tcp_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tcp_comm_genlisp)
add_dependencies(ros_tcp_comm_genlisp ros_tcp_comm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tcp_comm_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_tcp_comm
  "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tcp_comm
)
_generate_msg_py(ros_tcp_comm
  "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tcp_comm
)

### Generating Services

### Generating Module File
_generate_module_py(ros_tcp_comm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tcp_comm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_tcp_comm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_tcp_comm_generate_messages ros_tcp_comm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/ByteList.msg" NAME_WE)
add_dependencies(ros_tcp_comm_generate_messages_py _ros_tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/ros_tcp_comm/msg/IntList.msg" NAME_WE)
add_dependencies(ros_tcp_comm_generate_messages_py _ros_tcp_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tcp_comm_genpy)
add_dependencies(ros_tcp_comm_genpy ros_tcp_comm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tcp_comm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tcp_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tcp_comm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_tcp_comm_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tcp_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tcp_comm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_tcp_comm_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tcp_comm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tcp_comm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tcp_comm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_tcp_comm_generate_messages_py std_msgs_generate_messages_py)
endif()
