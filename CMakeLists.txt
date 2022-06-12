find_package(WDK REQUIRED)

file(GLOB_RECURSE sources "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")
file(GLOB_RECURSE sources_asm "${CMAKE_CURRENT_SOURCE_DIR}/src/*.asm")
file(GLOB_RECURSE headers "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h")

wdk_add_library(klib STATIC ${sources} ${sources_asm} ${headers})
target_include_directories(klib
    PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include"
    PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}"
)
