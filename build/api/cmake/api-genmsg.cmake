# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "api: 2 messages, 11 services")

set(MSG_I_FLAGS "-Iapi:/home/whj/catkin_ws/src/api/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(api_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/NavGoal.msg" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/msg/NavGoal.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GoalList.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/GoalList.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridSonar.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/GridSonar.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/DelGoal.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/DelGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/SetGoal.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/SetGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/AddGoal.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/AddGoal.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/GridPoint.msg" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/msg/GridPoint.msg" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridLaser.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/GridLaser.srv" "api/GridPoint"
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapData.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/MapData.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapList.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/MapList.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapRename.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/MapRename.srv" ""
)

get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridPose.srv" NAME_WE)
add_custom_target(_api_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "api" "/home/whj/catkin_ws/src/api/srv/GridPose.srv" "api/GridPoint"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(api
  "/home/whj/catkin_ws/src/api/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_msg_cpp(api
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)

### Generating Services
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/GridSonar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/DelGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/AddGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/GoalList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/GridLaser.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/MapData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/MapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/GridPose.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)
_generate_srv_cpp(api
  "/home/whj/catkin_ws/src/api/srv/MapRename.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
)

### Generating Module File
_generate_module_cpp(api
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(api_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(api_generate_messages api_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/NavGoal.msg" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GoalList.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridSonar.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/DelGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/SetGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/AddGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/GridPoint.msg" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridLaser.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapData.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapList.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapRename.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridPose.srv" NAME_WE)
add_dependencies(api_generate_messages_cpp _api_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(api_gencpp)
add_dependencies(api_gencpp api_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS api_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(api
  "/home/whj/catkin_ws/src/api/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_msg_lisp(api
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)

### Generating Services
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/GridSonar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/DelGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/AddGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/GoalList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/GridLaser.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/MapData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/MapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/GridPose.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)
_generate_srv_lisp(api
  "/home/whj/catkin_ws/src/api/srv/MapRename.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
)

### Generating Module File
_generate_module_lisp(api
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(api_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(api_generate_messages api_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/NavGoal.msg" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GoalList.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridSonar.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/DelGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/SetGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/AddGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/GridPoint.msg" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridLaser.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapData.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapList.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapRename.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridPose.srv" NAME_WE)
add_dependencies(api_generate_messages_lisp _api_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(api_genlisp)
add_dependencies(api_genlisp api_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS api_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(api
  "/home/whj/catkin_ws/src/api/msg/NavGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_msg_py(api
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)

### Generating Services
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/GridSonar.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/DelGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/AddGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/GoalList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/GridLaser.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/MapData.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/MapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/GridPose.srv"
  "${MSG_I_FLAGS}"
  "/home/whj/catkin_ws/src/api/msg/GridPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)
_generate_srv_py(api
  "/home/whj/catkin_ws/src/api/srv/MapRename.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
)

### Generating Module File
_generate_module_py(api
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(api_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(api_generate_messages api_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/NavGoal.msg" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GoalList.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridSonar.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/DelGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/SetGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/AddGoal.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/msg/GridPoint.msg" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridLaser.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapData.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/LaunchCmd.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapList.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/MapRename.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whj/catkin_ws/src/api/srv/GridPose.srv" NAME_WE)
add_dependencies(api_generate_messages_py _api_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(api_genpy)
add_dependencies(api_genpy api_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS api_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/api
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(api_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/api
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(api_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/api
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(api_generate_messages_py std_msgs_generate_messages_py)
endif()
