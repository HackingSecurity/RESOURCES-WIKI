cmake_minimum_required(VERSION 3.10)
project(sealDEMO VERSION 1.0) 
add_executable(sealDemo sealDemo.cpp)

find_package(SEAL)
target_link_libraries(sealDemo SEAL::seal)