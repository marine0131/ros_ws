# Install script for directory: /home/whj/catkin_ws/src/api/api_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/whj/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/api_msgs/msg" TYPE FILE FILES
    "/home/whj/catkin_ws/src/api/api_msgs/msg/GridPoint.msg"
    "/home/whj/catkin_ws/src/api/api_msgs/msg/CustomMoveCmd.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/api_msgs/srv" TYPE FILE FILES
    "/home/whj/catkin_ws/src/api/api_msgs/srv/GetList.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadFile.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/UploadMap.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/DownloadMap.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/MapData.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/AddGoal.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/GoalList.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/DelGoal.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/GridSonar.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/GridPose.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/GridLaser.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/SetGoal.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/LaunchCmd.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/DelFile.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameMap.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/RenameGoal.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/NavToGoal.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/CustomInitialize.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/PredefinedInitialize.srv"
    "/home/whj/catkin_ws/src/api/api_msgs/srv/SaveModifiedMap.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/api_msgs/cmake" TYPE FILE FILES "/home/whj/catkin_ws/build/api/api_msgs/catkin_generated/installspace/api_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/whj/catkin_ws/devel/include/api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/whj/catkin_ws/devel/share/common-lisp/ros/api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/whj/catkin_ws/devel/lib/python2.7/dist-packages/api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/whj/catkin_ws/devel/lib/python2.7/dist-packages/api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/whj/catkin_ws/build/api/api_msgs/catkin_generated/installspace/api_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/api_msgs/cmake" TYPE FILE FILES "/home/whj/catkin_ws/build/api/api_msgs/catkin_generated/installspace/api_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/api_msgs/cmake" TYPE FILE FILES
    "/home/whj/catkin_ws/build/api/api_msgs/catkin_generated/installspace/api_msgsConfig.cmake"
    "/home/whj/catkin_ws/build/api/api_msgs/catkin_generated/installspace/api_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/api_msgs" TYPE FILE FILES "/home/whj/catkin_ws/src/api/api_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

