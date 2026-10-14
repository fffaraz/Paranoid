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

add_executable(paranoid main.cpp game.cpp draw.cpp sim.cpp replay.cpp hiscore.cpp keymap.cpp screens.cpp bitmaps.cpp fonts.cpp levels.cpp sound.cpp)
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
        --pre-js ${CMAKE_SOURCE_DIR}/web/pre.js
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

# Replays the original's attract-mode demo through sim.cpp and compares the
# traces (TODO V4). Skipped when tests/reference/demo.trace.gz is missing.
if(NOT EMSCRIPTEN)
    enable_testing()
    add_test(NAME demo_replay
        COMMAND ${CMAKE_SOURCE_DIR}/tools/check_demo_replay.sh $<TARGET_FILE:paranoid>)
    set_tests_properties(demo_replay PROPERTIES SKIP_RETURN_CODE 77)
    # Draws the scenes in tests/reference/screens and compares them with the
    # original's screens (TODO V5). Skipped without a display.
    add_test(NAME screens
        COMMAND ${CMAKE_SOURCE_DIR}/tools/check_screens.sh $<TARGET_FILE:paranoid>)
    set_tests_properties(screens PROPERTIES SKIP_RETURN_CODE 77)
    # Writes the sound effects and checks each against its pattern in
    # PARANOID.COM, tick by tick (TODO V6).
    add_test(NAME sounds
        COMMAND ${CMAKE_SOURCE_DIR}/tools/check_sounds.sh $<TARGET_FILE:paranoid>)
endif()
