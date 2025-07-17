add_library(inflections-module Tangled/inflections-module.c)

target_include_directories(inflections-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
