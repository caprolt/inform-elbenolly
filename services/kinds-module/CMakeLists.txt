add_library(kinds-module Tangled/kinds-module.c)

target_include_directories(kinds-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
