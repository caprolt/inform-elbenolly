add_library(index-module Tangled/index-module.c)

target_include_directories(index-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
