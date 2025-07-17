add_library(bytecode-module Tangled/bytecode-module.c)

target_include_directories(bytecode-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
