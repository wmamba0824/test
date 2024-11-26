# Install script for directory: /home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/saimo/SimPro_wzs/SimPro_Code_ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/RosAdapter/msg" TYPE FILE FILES
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/header.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/activate_controller.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/assign_controller_property.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/assign_controller.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/coord.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/custom_command.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/csv_data.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/driver_ctrl.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/dynamic_object.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/environment.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/geometry.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/lane_info.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/object_state.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/object_uion.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/override_controller.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/sensor_info.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/sign_object.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/sensor_detection_info.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/sync.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/traffic_light.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/traffic_sign.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/traffic_light_phase.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/mil_ego_state.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/mil_object_state_base.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/mil_object_state.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/mil_roadmark.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/mil_amesim_signal.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/mark_object.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/rosADToSimproDriverCtrl.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/rosADToSimproEgoState.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/rosADToSimproTrigger.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/rosSimproToAD.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/contact_point.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/road_query.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/init_param.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/parkingSpace.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/road_state.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/v2x_warninginformation.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/LocalObsPose.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/point3d.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/imu_data.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/gnss_gga.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/uwb_data.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/ad_signal_data.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/model_outline.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/ttc_control.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/rsu_vnfp_info.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/obu_vnfp_info.msg"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/msg/double_array.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/RosAdapter/cmake" TYPE FILE FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/build/RosAdapter/catkin_generated/installspace/RosAdapter-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/include/RosAdapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/share/roseus/ros/RosAdapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/share/common-lisp/ros/RosAdapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/share/gennodejs/ros/RosAdapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/lib/python3/dist-packages/RosAdapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/lib/python3/dist-packages/RosAdapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/build/RosAdapter/catkin_generated/installspace/RosAdapter.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/RosAdapter/cmake" TYPE FILE FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/build/RosAdapter/catkin_generated/installspace/RosAdapter-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/RosAdapter/cmake" TYPE FILE FILES
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/build/RosAdapter/catkin_generated/installspace/RosAdapterConfig.cmake"
    "/home/saimo/SimPro_wzs/SimPro_Code_ros/build/RosAdapter/catkin_generated/installspace/RosAdapterConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/RosAdapter" TYPE FILE FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/src/RosAdapter/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRosAdapter.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRosAdapter.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRosAdapter.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/lib/libRosAdapter.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRosAdapter.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRosAdapter.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libRosAdapter.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/RosAdapter/RosAdapter_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/RosAdapter/RosAdapter_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/RosAdapter/RosAdapter_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RosAdapter" TYPE EXECUTABLE FILES "/home/saimo/SimPro_wzs/SimPro_Code_ros/devel/lib/RosAdapter/RosAdapter_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/RosAdapter/RosAdapter_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/RosAdapter/RosAdapter_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/RosAdapter/RosAdapter_node"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/RosAdapter/RosAdapter_node")
    endif()
  endif()
endif()

