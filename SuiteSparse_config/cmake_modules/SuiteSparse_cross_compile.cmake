# the name of the target operating system
set(CMAKE_SYSTEM_NAME Linux)

# which compilers to use for C and C++
if ( TARGET_ARCH "aarch64" OR TARGET_ARCH "riscv64" )
    set(CMAKE_C_COMPILER   "${TARGET_ARCH}-linux-gnu-gcc-10")
    set(CMAKE_CXX_COMPILER   "${TARGET_ARCH}-linux-gnu-g++-9")
elseif ( TARGET_ARCH "ppc64le" )
    set(CMAKE_C_COMPILER   "powerpc64le-linux-gnu-gcc-10")
    set(CMAKE_CXX_COMPILER   "powerpc64le-linux-gnu-g++-9")
elseif ( TARGET_ARCH "x86" )
    set(CMAKE_C_COMPILER   "gcc")
    set(CMAKE_CXX_COMPILER   "g++")
else ( )
    set(CMAKE_C_COMPILER   "s390x-linux-gnu-gcc-10")
    set(CMAKE_CXX_COMPILER   "s390x-linux-gnu-g++-9")
endif ( )

# where is the target environment located
set(CMAKE_FIND_ROOT_PATH CROSS_SYSROOT)

# adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# search headers and libraries in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)