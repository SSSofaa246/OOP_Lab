cmake_minimum_required(VERSION 3.10)
project(CensorApp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_TOOLCHAIN_FILE "C:/Dev/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")

find_package(GTest REQUIRED)

add_library(censor_lib censor.cpp)

add_executable(censor main.cpp)
target_link_libraries(censor PRIVATE censor_lib)

add_executable(censor_tests test.cpp)
target_link_libraries(censor_tests PRIVATE GTest::gtest_main censor_lib)
target_include_directories(censor_tests PRIVATE ${CMAKE_SOURCE_DIR})

enable_testing()
add_test(NAME CensorTests COMMAND censor_tests)