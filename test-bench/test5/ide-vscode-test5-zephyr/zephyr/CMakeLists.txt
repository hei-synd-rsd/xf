cmake_minimum_required(VERSION 3.13.1)
include($ENV{ZEPHYR_BASE}/cmake/app/boilerplate.cmake NO_POLICY_SCOPE)
project(test5)

set(PROJECT_SOURCE_PATH "../../src")

file(GLOB project_sources ${PROJECT_SOURCE_PATH}/main.cpp)
#file(GLOB app_sources ../src/*.c*)
#file(GLOB app_sources ../src/main.cpp)

target_sources(app PRIVATE ${project_sources} ${app_sources})
