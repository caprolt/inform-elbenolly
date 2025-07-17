add_library(words-module Tangled/words-module.c)

target_include_directories(words-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
