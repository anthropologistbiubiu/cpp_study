# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-src"
  "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-build"
  "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-subbuild/drogon-populate-prefix"
  "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-subbuild/drogon-populate-prefix/tmp"
  "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-subbuild/drogon-populate-prefix/src/drogon-populate-stamp"
  "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-subbuild/drogon-populate-prefix/src"
  "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-subbuild/drogon-populate-prefix/src/drogon-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-subbuild/drogon-populate-prefix/src/drogon-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/biubiu/Documents/cpp_study/web/_deps/drogon-subbuild/drogon-populate-prefix/src/drogon-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
