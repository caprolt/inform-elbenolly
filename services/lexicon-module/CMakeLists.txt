add_library(lexicon-module Tangled/lexicon-module.c)

target_include_directories(lexicon-module PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
)
