cmake_minimum_required(VERSION 3.14)
project(web)
set(CMAKE_CXX_STANDARD 17)

include(FetchContent)

# -- 1. 声明 drogon
FetchContent_Declare(
  drogon
  GIT_REPOSITORY https://github.com/drogonframework/drogon.git
  GIT_TAG        v1.9.4           # 或 master
)

# -- 2. 可选：关掉例子/测试，必须在 MakeAvailable 之前做
set(DROGON_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(DROGON_BUILD_TEST     OFF CACHE BOOL "" FORCE)

# -- 3. 真正把 drogon 子工程拉进来（必须早于 add_executable/link）
FetchContent_MakeAvailable(drogon)

# -- 4. 你的可执行
add_executable(web src/main.cpp)

# -- 5. 链接；先尝试别名，找不到就退回裸目标
if(TARGET drogon::drogon)
    target_link_libraries(web PRIVATE drogon::drogon)
elseif(TARGET drogon)
    message(WARNING "Alias drogon::drogon not found; using bare target drogon")
    target_link_libraries(web PRIVATE drogon)
else()
    message(FATAL_ERROR "Neither drogon::drogon nor drogon targets exist")
endif()