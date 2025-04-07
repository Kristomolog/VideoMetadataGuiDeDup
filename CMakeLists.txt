cmake_minimum_required(VERSION 3.5)

project(VideoDeduplicator LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt5 REQUIRED COMPONENTS Widgets)

add_executable(VideoDeduplicator main.cpp)

target_link_libraries(VideoDeduplicator Qt5::Widgets)
