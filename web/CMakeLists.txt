cmake_minimum_required(VERSION 3.14)
project(web)
set(CMAKE_CXX_STANDARD 17)

include(FetchContent)

FetchContent_Declare(
  drogon
  GIT_REPOSITORY https://github.com/drogonframework/drogon.git
  GIT_TAG        v1.9.4
)

set(DROGON_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(DROGON_BUILD_TEST     OFF CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(drogon)

add_executable(web src/main.cpp)

# ✅ 直接使用 drogon 目标
target_link_libraries(web PRIVATE drogon)