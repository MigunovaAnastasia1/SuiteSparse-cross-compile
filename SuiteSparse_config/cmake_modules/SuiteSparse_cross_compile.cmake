# the name of the target operating system
set(CMAKE_SYSTEM_NAME Linux)

# which compilers to use for C and C++
if ( $ENV{TARGET_ARCH} MATCHES "aarch64" OR $ENV{TARGET_ARCH} MATCHES "riscv64" )
    set(CMAKE_C_COMPILER   "/usr/bin/$ENV{TARGET_ARCH}-linux-gnu-gcc-10")
    set(CMAKE_CXX_COMPILER   "/usr/bin/$ENV{TARGET_ARCH}-linux-gnu-g++-9")
elseif ( $ENV{TARGET_ARCH} MATCHES "ppc64le" )
    set(CMAKE_C_COMPILER   "/usr/bin/powerpc64le-linux-gnu-gcc-10")
    set(CMAKE_CXX_COMPILER   "/usr/bin/powerpc64le-linux-gnu-g++-9")
elseif ( $ENV{TARGET_ARCH} MATCHES "x86" )
    set(CMAKE_C_COMPILER   "/usr/bin/gcc")
    set(CMAKE_CXX_COMPILER   "/usr/bin/g++")
else ( )
    set(CMAKE_C_COMPILER   "/usr/bin/s390x-linux-gnu-gcc-10")
    set(CMAKE_CXX_COMPILER   "/usr/bin/s390x-linux-gnu-g++-9")
endif ( )

# where is the target environment located
# set(CMAKE_FIND_ROOT_PATH $ENV{CROSS_SYSROOT})

# adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# search headers and libraries in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)