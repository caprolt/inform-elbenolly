add_library(building-module Tangled/building-module.c)

target_include_directories(building-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
