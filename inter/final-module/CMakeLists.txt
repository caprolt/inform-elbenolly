add_library(final-module Tangled/final-module.c)

target_include_directories(final-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
