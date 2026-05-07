cmake_minimum_required(VERSION 3.25)
project(paranoid CXX)

set(CMAKE_CXX_STANDARD 17)

include(FetchContent)

FetchContent_Declare(
    raylib
    GIT_REPOSITORY https://github.com/raysan5/raylib.git
    GIT_TAG 6.0
    GIT_SHALLOW ON
    EXCLUDE_FROM_ALL
)
FetchContent_MakeAvailable(raylib)

add_compile_options(-Werror)

add_executable(paranoid main.cpp bitmaps.cpp fonts.cpp levels.cpp sound.cpp)
target_link_libraries(paranoid PRIVATE raylib m)

if(EMSCRIPTEN)
    set(CMAKE_EXECUTABLE_SUFFIX ".html")
    # ASYNCIFY lets the existing while(!WindowShouldClose()) loop yield to the browser.
    # Data files are bundled into the virtual FS via --preload-file.
    target_link_options(paranoid PRIVATE
        -sUSE_GLFW=3
        -sASYNCIFY
        -sSTACK_SIZE=1048576
        -sASYNCIFY_STACK_SIZE=65536
        -sINITIAL_MEMORY=67108864
        -sALLOW_MEMORY_GROWTH=1
        -sFORCE_FILESYSTEM=1
        -sEXPORTED_RUNTIME_METHODS=['ccall','cwrap']
        --preload-file ${CMAKE_SOURCE_DIR}/paranoid-v1.8@/paranoid-v1.8
    )
    if(CMAKE_BUILD_TYPE STREQUAL "Debug")
        target_compile_options(paranoid PRIVATE -g -O0)
        target_link_options(paranoid PRIVATE
            -g
            -O0
            -sASSERTIONS=2
            -sSAFE_HEAP=1
            -sSTACK_OVERFLOW_CHECK=2
        )
    endif()
endif()
