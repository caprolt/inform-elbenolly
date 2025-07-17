add_executable(inter Tangled/inter.c)

target_include_directories(inter PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/.."
    "${CMAKE_CURRENT_SOURCE_DIR}/bytecode-module"
    "${CMAKE_CURRENT_SOURCE_DIR}/building-module"
    "${CMAKE_CURRENT_SOURCE_DIR}/pipeline-module"
    "${CMAKE_CURRENT_SOURCE_DIR}/final-module"
    "${CMAKE_CURRENT_SOURCE_DIR}/index-module"
)

target_link_libraries(inter
    bytecode-module
    building-module
    pipeline-module
    final-module
    index-module
)
