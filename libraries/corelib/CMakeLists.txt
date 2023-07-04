# CORE Library

file(GLOB_RECURSE CORE_LIB_SOURCES
    "${CMAKE_CURRENT_LIST_DIR}/include/*.h"
    "${CMAKE_CURRENT_LIST_DIR}/include/*.hpp"
    "${CMAKE_CURRENT_LIST_DIR}/source/*.cpp"
)

add_library(coreLibA STATIC ${CORE_LIB_SOURCES})

target_include_directories(coreLibA PUBLIC "${CMAKE_CURRENT_LIST_DIR}/include")

target_link_libraries(coreLibA PUBLIC utilityLibA)