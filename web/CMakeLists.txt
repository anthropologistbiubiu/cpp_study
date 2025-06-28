cmake_minimum_required(VERSION 3.14)
project(web)
set(CMAKE_CXX_STANDARD 17)

# 把 cmake/ 目录加入模块搜索路径
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

# 引入自定义模块，下载并配置 drogon
include(FetchDrogon)


add_executable(web
    src/main.cpp
    src/Logger.h
    src/controllers/OrderController.h
)
target_include_directories(web PRIVATE src)
target_link_libraries(web PRIVATE drogon)