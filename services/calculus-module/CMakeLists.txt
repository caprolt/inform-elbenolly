add_library(calculus-module Tangled/calculus-module.c)

target_include_directories(calculus-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
