add_library(html-module Tangled/html-module.c)

target_include_directories(html-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
