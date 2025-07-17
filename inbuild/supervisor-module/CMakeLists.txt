add_library(supervisor-module Tangled/supervisor-module.c)

target_include_directories(supervisor-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
