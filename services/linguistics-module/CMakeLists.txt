add_library(linguistics-module Tangled/linguistics-module.c)

target_include_directories(linguistics-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
