
macro(include_proj_a)
    include(FetchContent)
    FetchContent_Declare(
        ProjB
        GIT_REPOSITORY git@github.com:wsciaroni/projB.git
        GIT_TAG master
    )

    # Check to see if googletest has already been populated so we only populate it once
    FetchContent_GetProperties(ProjB)
    if(NOT ProjB_POPULATED)
        FetchContent_MakeAvailable(ProjB)
    endif()
endmacro(include_proj_a)
