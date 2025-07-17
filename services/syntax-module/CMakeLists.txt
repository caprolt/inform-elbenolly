add_library(syntax-module Tangled/syntax-module.c)

target_include_directories(syntax-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
