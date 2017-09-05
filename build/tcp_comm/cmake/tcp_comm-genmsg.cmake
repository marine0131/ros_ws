# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tcp_comm: 4 messages, 0 services")

set(MSG_I_FLAGS "-Itcp_comm:/home/whj/catkin_ws/src/tcp_comm/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tcp_comm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg" NAME_WE)
add_custom_target(_tcp_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tcp_comm" "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg" NAME_WE)
add_custom_target(_tcp_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tcp_comm" "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg" NAME_WE)
add_custom_target(_tcp_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tcp_comm" "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg" NAME_WE)
add_custom_target(_tcp_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tcp_comm" "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tcp_comm
)
_generate_msg_cpp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tcp_comm
)
_generate_msg_cpp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tcp_comm
)
_generate_msg_cpp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tcp_comm
)

### Generating Services

### Generating Module File
_generate_module_cpp(tcp_comm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tcp_comm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tcp_comm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tcp_comm_generate_messages tcp_comm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_cpp _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_cpp _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_cpp _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_cpp _tcp_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tcp_comm_gencpp)
add_dependencies(tcp_comm_gencpp tcp_comm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tcp_comm_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tcp_comm
)
_generate_msg_lisp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tcp_comm
)
_generate_msg_lisp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tcp_comm
)
_generate_msg_lisp(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tcp_comm
)

### Generating Services

### Generating Module File
_generate_module_lisp(tcp_comm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tcp_comm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tcp_comm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tcp_comm_generate_messages tcp_comm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_lisp _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_lisp _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_lisp _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_lisp _tcp_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tcp_comm_genlisp)
add_dependencies(tcp_comm_genlisp tcp_comm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tcp_comm_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm
)
_generate_msg_py(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm
)
_generate_msg_py(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm
)
_generate_msg_py(tcp_comm
  "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm
)

### Generating Services

### Generating Module File
_generate_module_py(tcp_comm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tcp_comm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tcp_comm_generate_messages tcp_comm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Encoder.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_py _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/ByteList.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_py _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/IntList.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_py _tcp_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/tcp_comm/msg/Ultrasound.msg" NAME_WE)
add_dependencies(tcp_comm_generate_messages_py _tcp_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tcp_comm_genpy)
add_dependencies(tcp_comm_genpy tcp_comm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tcp_comm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tcp_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tcp_comm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tcp_comm_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tcp_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tcp_comm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tcp_comm_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tcp_comm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tcp_comm_generate_messages_py std_msgs_generate_messages_py)
endif()
