add_library(pipeline-module Tangled/pipeline-module.c)

target_include_directories(pipeline-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
