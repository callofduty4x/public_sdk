project(lua)

set(C_SRC 
    lua/lapi.c
    lua/lauxlib.c
    lua/lbaselib.c
    lua/lbitlib.c
    lua/lcode.c
    lua/lcorolib.c
    lua/lctype.c
    lua/ldblib.c
    lua/ldebug.c
    lua/ldo.c
    lua/ldump.c
    lua/lfunc.c
    lua/lgc.c
    lua/linit.c
    lua/liolib.c
    lua/llex.c
    lua/lmathlib.c
    lua/lmem.c
    lua/loadlib.c
    lua/lobject.c
    lua/lopcodes.c
    lua/loslib.c
    lua/lparser.c
    lua/lstate.c
    lua/lstring.c
    lua/lstrlib.c
    lua/ltable.c
    lua/ltablib.c
    lua/ltests.c
    lua/ltm.c
    lua/lundump.c
    lua/lutf8lib.c
    lua/lvm.c
    lua/lzio.c
)
set(C_INC 
    lua/ltm.h
    lua/lua.h
    lua/luaconf.h
    lua/lualib.h
    lua/lapi.h
    lua/lauxlib.h
    lua/lcode.h
    lua/lctype.h
    lua/ldebug.h
    lua/lfunc.h
    lua/ldo.h
    lua/lgc.h
    lua/llex.h
    lua/llimits.h
    lua/lmem.h
    lua/lobject.h
    lua/lopcodes.h
    lua/lparser.h
    lua/lprefix.h
    lua/lstate.h
    lua/lstring.h
    lua/ltable.h
    lua/ltests.h
    lua/lundump.h
    lua/lvm.h
    lua/lzio.h
)

add_library(${PROJECT_NAME} STATIC ${C_SRC} ${C_INC})
#target_include_directories(${PROJECT_NAME} PUBLIC ${zlib_SOURCE_DIR}/contrib/minizip ${zlib_SOURCE_DIR} ${zlib_BINARY_DIR})

#set_target_properties(example PROPERTIES FOLDER "rubbish" EXCLUDE_FROM_ALL true EXCLUDE_FROM_DEFAULT_BUILD true)
#set_target_properties(minigzip PROPERTIES FOLDER "rubbish" EXCLUDE_FROM_ALL true EXCLUDE_FROM_DEFAULT_BUILD true)
#set_target_properties(zlib PROPERTIES FOLDER "rubbish" EXCLUDE_FROM_ALL true EXCLUDE_FROM_DEFAULT_BUILD true)
#set_target_properties(minizip PROPERTIES FOLDER "sdk/zlib")
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "sdk/lua")
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${C_SRC} ${C_INC})
