
add_executable(mainA "${CMAKE_CURRENT_LIST_DIR}/main.cpp")

target_link_libraries(mainA PUBLIC coreLibB)
