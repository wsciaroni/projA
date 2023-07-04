
if(BUILD_TESTING)
    # Tests
    file(GLOB_RECURSE unittests "${CMAKE_CURRENT_LIST_DIR}/unittests/*.cxx")
    add_executable(
    testLibA
    ${unittests}
    )
    target_link_libraries(
        testLibA
        PUBLIC
        coreLibA
        GTest::gtest_main
        GTest::gmock_main
    )

    include(GoogleTest)
    gtest_discover_tests(testLibA)
endif(BUILD_TESTING)
