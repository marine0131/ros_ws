# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "laser_line_extraction: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ilaser_line_extraction:/home/whj/catkin_ws/src/laser_line_extraction/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(laser_line_extraction_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg" NAME_WE)
add_custom_target(_laser_line_extraction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laser_line_extraction" "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg" NAME_WE)
add_custom_target(_laser_line_extraction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laser_line_extraction" "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg" "laser_line_extraction/LineSegment:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(laser_line_extraction
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_line_extraction
)
_generate_msg_cpp(laser_line_extraction
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_line_extraction
)

### Generating Services

### Generating Module File
_generate_module_cpp(laser_line_extraction
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_line_extraction
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(laser_line_extraction_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(laser_line_extraction_generate_messages laser_line_extraction_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg" NAME_WE)
add_dependencies(laser_line_extraction_generate_messages_cpp _laser_line_extraction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg" NAME_WE)
add_dependencies(laser_line_extraction_generate_messages_cpp _laser_line_extraction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_line_extraction_gencpp)
add_dependencies(laser_line_extraction_gencpp laser_line_extraction_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_line_extraction_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(laser_line_extraction
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_line_extraction
)
_generate_msg_lisp(laser_line_extraction
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_line_extraction
)

### Generating Services

### Generating Module File
_generate_module_lisp(laser_line_extraction
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_line_extraction
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(laser_line_extraction_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(laser_line_extraction_generate_messages laser_line_extraction_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg" NAME_WE)
add_dependencies(laser_line_extraction_generate_messages_lisp _laser_line_extraction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg" NAME_WE)
add_dependencies(laser_line_extraction_generate_messages_lisp _laser_line_extraction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_line_extraction_genlisp)
add_dependencies(laser_line_extraction_genlisp laser_line_extraction_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_line_extraction_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(laser_line_extraction
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_line_extraction
)
_generate_msg_py(laser_line_extraction
  "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_line_extraction
)

### Generating Services

### Generating Module File
_generate_module_py(laser_line_extraction
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_line_extraction
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(laser_line_extraction_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(laser_line_extraction_generate_messages laser_line_extraction_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegment.msg" NAME_WE)
add_dependencies(laser_line_extraction_generate_messages_py _laser_line_extraction_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/laser_line_extraction/msg/LineSegmentList.msg" NAME_WE)
add_dependencies(laser_line_extraction_generate_messages_py _laser_line_extraction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_line_extraction_genpy)
add_dependencies(laser_line_extraction_genpy laser_line_extraction_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_line_extraction_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_line_extraction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_line_extraction
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(laser_line_extraction_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_line_extraction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_line_extraction
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(laser_line_extraction_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_line_extraction)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_line_extraction\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_line_extraction
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(laser_line_extraction_generate_messages_py sensor_msgs_generate_messages_py)
endif()
