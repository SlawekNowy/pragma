include(${CMAKE_SOURCE_DIR}/cmake/pr_common.cmake)

set(PROJ_NAME server)
set(CMAKE_CXX_STANDARD 20)
pr_add_library(${PROJ_NAME} SHARED)
unset(CMAKE_CXX_STANDARD)
pr_precompile_headers(${PROJ_NAME} "stdafx_server.h")

pr_add_dependency(${PROJ_NAME} shared TARGET PUBLIC)
pr_add_dependency(${PROJ_NAME} servermanager TARGET)
pr_add_dependency(${PROJ_NAME} util_sound TARGET)

pr_add_headers(${PROJ_NAME} "include/")
pr_add_sources(${PROJ_NAME} "src/")

pr_add_compile_definitions(${PROJ_NAME} -DWMS_STATIC PUBLIC)
pr_add_compile_definitions(${PROJ_NAME} -DDLLSERVER_EX)

pr_finalize(${PROJ_NAME})
