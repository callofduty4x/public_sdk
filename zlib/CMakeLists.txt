# Adding zlib submodule which can be compiled by provided CMakeLists.txt
add_subdirectory(zlib)

# Adding zlib/contrib/minizip part which is not getting compiled by provided CMakeLists.txt.
project(minizip)

set(CPP_SRC 
    ${zlib_SOURCE_DIR}/contrib/minizip/unzip.c
    ${zlib_SOURCE_DIR}/contrib/minizip/ioapi.c
)
set(CPP_INC 
    ${zlib_SOURCE_DIR}/contrib/minizip/unzip.h
    ${zlib_SOURCE_DIR}/contrib/minizip/ioapi.h
)

add_library(${PROJECT_NAME} STATIC ${CPP_SRC} ${CPP_INC})
target_include_directories(${PROJECT_NAME} PUBLIC ${zlib_SOURCE_DIR}/contrib/minizip ${zlib_SOURCE_DIR} ${zlib_BINARY_DIR})

# Fix up zlib cmake errors...
target_include_directories(example PRIVATE ${zlib_SOURCE_DIR})
target_include_directories(minigzip PRIVATE ${zlib_SOURCE_DIR})

set_target_properties(example PROPERTIES FOLDER "rubbish" EXCLUDE_FROM_ALL true EXCLUDE_FROM_DEFAULT_BUILD true)
set_target_properties(minigzip PROPERTIES FOLDER "rubbish" EXCLUDE_FROM_ALL true EXCLUDE_FROM_DEFAULT_BUILD true)
set_target_properties(zlib PROPERTIES FOLDER "rubbish" EXCLUDE_FROM_ALL true EXCLUDE_FROM_DEFAULT_BUILD true)
set_target_properties(minizip PROPERTIES FOLDER "sdk/zlib")
set_target_properties(zlibstatic PROPERTIES FOLDER "sdk/zlib")
