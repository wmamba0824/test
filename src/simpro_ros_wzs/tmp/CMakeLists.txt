cmake_minimum_required(VERSION 3.5.1)
project(AdAdapter)

set(CMAKE_CXX_STANDARD 14)

add_executable(AdAdapter main.cpp MsgReceiver.h MsgReceiver.cpp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
