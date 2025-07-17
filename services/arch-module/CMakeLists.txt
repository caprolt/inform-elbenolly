add_library(arch-module Tangled/arch-module.c)

target_include_directories(arch-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
