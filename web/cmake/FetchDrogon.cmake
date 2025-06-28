# cmake/FetchDrogon.cmake
# 通过 FetchContent 自动下载并构建 Drogon

include(FetchContent)

FetchContent_Declare(
  drogon
  GIT_REPOSITORY https://github.com/drogonframework/drogon.git
  GIT_TAG        v1.9.4
)

# 关闭示例和测试的编译，减小体积
set(DROGON_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(DROGON_BUILD_TEST     OFF CACHE BOOL "" FORCE)

# 拉取并添加到构建中
FetchContent_MakeAvailable(drogon)