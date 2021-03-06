cmake_minimum_required(VERSION 2.8.3)
project(tf2_web_republisher)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS tf tf2_ros geometry_msgs actionlib actionlib_msgs roscpp)
find_package(Boost REQUIRED COMPONENTS thread)

#######################################
## Declare ROS messages and services ##
#######################################

add_action_files(
  DIRECTORY action
  FILES TFSubscription.action
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES actionlib_msgs std_msgs geometry_msgs roscpp
)

###################################################
## Declare things to be passed to other projects ##
###################################################

## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
  CATKIN_DEPENDS tf tf2_ros geometry_msgs actionlib actionlib_msgs
)

###########
## Build ##
###########

## Specify additional locations of header files
include_directories(include
  ${catkin_INCLUDE_DIRS}
)

## Declare a cpp executables
add_executable(${PROJECT_NAME} src/tf_web_republisher.cpp)
target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES} ${Boost_LIBRARIES}
)
add_dependencies(${PROJECT_NAME}
  ${PROJECT_NAME}_generate_messages_cpp ${catkin_EXPORTED_TARGETS}
)

add_executable(${PROJECT_NAME}_test_subscription tests/test_subscription.cpp)
target_link_libraries(${PROJECT_NAME}_test_subscription
  ${catkin_LIBRARIES} ${Boost_LIBRARIES}
)
add_dependencies(${PROJECT_NAME}_test_subscription
  ${PROJECT_NAME}_generate_messages_cpp ${catkin_EXPORTED_TARGETS}
)

add_executable(${PROJECT_NAME}_test_subscription2 tests/test_subscription2.cpp)
target_link_libraries(${PROJECT_NAME}_test_subscription2
  ${catkin_LIBRARIES} ${Boost_LIBRARIES}
)
add_dependencies(${PROJECT_NAME}_test_subscription2
  ${PROJECT_NAME}_generate_messages_cpp ${catkin_EXPORTED_TARGETS}
)

#############
## Install ##
#############

## Mark executables and/or libraries for installation
install(TARGETS ${PROJECT_NAME}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY include/
   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
   FILES_MATCHING PATTERN "*.h" PATTERN "*.hpp"
)

