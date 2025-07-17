add_library(problems-module Tangled/problems-module.c)

target_include_directories(problems-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
