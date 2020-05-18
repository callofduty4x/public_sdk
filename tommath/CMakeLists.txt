project(tommath)

file(GLOB SRC libtommath/*.c)
file(GLOB INC libtommath/*.h)

add_library(${PROJECT_NAME} STATIC ${SRC} ${INC})
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/libtommath)

set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "public_sdk/${PROJECT_NAME}")
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR}/libtommath FILES ${SRC} ${INC})
