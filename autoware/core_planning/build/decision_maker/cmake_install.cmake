# Install script for directory: /home/kimna/Desktop/autoware.ai/src/autoware/core_planning/decision_maker

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/decision_maker")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/decision_maker/catkin_generated/installspace/decision_maker.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/decision_maker/cmake" TYPE FILE FILES
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/decision_maker/catkin_generated/installspace/decision_makerConfig.cmake"
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/decision_maker/catkin_generated/installspace/decision_makerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/decision_maker" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/decision_maker/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/decision_maker/decision_maker_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/decision_maker/decision_maker_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/decision_maker/decision_maker_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/decision_maker" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/decision_maker/devel/lib/decision_maker/decision_maker_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/decision_maker/decision_maker_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/decision_maker/decision_maker_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/decision_maker/decision_maker_node"
         OLD_RPATH "/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_extension/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_validation/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_routing/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_projection/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_io/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_traffic_rules/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_core/lib:/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/state_machine_lib/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/decision_maker/decision_maker_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/decision_maker/launch" TYPE DIRECTORY FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/decision_maker/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/decision_maker" TYPE FILE FILES
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/decision_maker/autoware_state_behavior.yaml"
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/decision_maker/autoware_state_motion.yaml"
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/decision_maker/autoware_state_mission.yaml"
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/decision_maker/autoware_state_vehicle.yaml"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/decision_maker/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/decision_maker/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
