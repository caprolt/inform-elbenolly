add_executable(inbuild Tangled/inbuild.c)

target_include_directories(inbuild PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}/.."
    "${CMAKE_CURRENT_SOURCE_DIR}/supervisor-module"
)

target_link_libraries(inbuild supervisor-module)
