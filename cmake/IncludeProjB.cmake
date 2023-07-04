
macro(include_proj_b)
    include(FetchContent)
    FetchContent_Declare(
        ProjB
        GIT_REPOSITORY https://github.com/wsciaroni/projB.git
        GIT_TAG 0.0.1
    )

    # Check to see if googletest has already been populated so we only populate it once
    FetchContent_GetProperties(ProjB)
    if(NOT ProjB_POPULATED)
        FetchContent_MakeAvailable(ProjB)
    endif()
endmacro(include_proj_b)
