set(CMAKE_Fortran_COMPILER "/apps/intel-ct/wrapper/ifx")
set(CMAKE_Fortran_COMPILER_ARG1 "")
set(CMAKE_Fortran_COMPILER_ID "IntelLLVM")
set(CMAKE_Fortran_COMPILER_VERSION "2023.2.0")
set(CMAKE_Fortran_COMPILER_WRAPPER "")
set(CMAKE_Fortran_PLATFORM_ID "Linux")
set(CMAKE_Fortran_SIMULATE_ID "")
set(CMAKE_Fortran_SIMULATE_VERSION "")




set(CMAKE_AR "/bin/ar")
set(CMAKE_Fortran_COMPILER_AR "")
set(CMAKE_RANLIB "/bin/ranlib")
set(CMAKE_Fortran_COMPILER_RANLIB "")
set(CMAKE_COMPILER_IS_GNUG77 )
set(CMAKE_Fortran_COMPILER_LOADED 1)
set(CMAKE_Fortran_COMPILER_WORKS TRUE)
set(CMAKE_Fortran_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_Fortran_COMPILER_ENV_VAR "FC")

set(CMAKE_Fortran_COMPILER_SUPPORTS_F90 1)

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_Fortran_COMPILER_ID_RUN 1)
set(CMAKE_Fortran_SOURCE_FILE_EXTENSIONS f;F;fpp;FPP;f77;F77;f90;F90;for;For;FOR;f95;F95)
set(CMAKE_Fortran_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_Fortran_LINKER_PREFERENCE 20)
if(UNIX)
  set(CMAKE_Fortran_OUTPUT_EXTENSION .o)
else()
  set(CMAKE_Fortran_OUTPUT_EXTENSION .obj)
endif()

# Save compiler ABI information.
set(CMAKE_Fortran_SIZEOF_DATA_PTR "8")
set(CMAKE_Fortran_COMPILER_ABI "ELF")
set(CMAKE_Fortran_LIBRARY_ARCHITECTURE "x86_64-unknown-linux-gnu")

if(CMAKE_Fortran_SIZEOF_DATA_PTR AND NOT CMAKE_SIZEOF_VOID_P)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_Fortran_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_Fortran_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_Fortran_COMPILER_ABI}")
endif()

if(CMAKE_Fortran_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "x86_64-unknown-linux-gnu")
endif()





set(CMAKE_Fortran_IMPLICIT_INCLUDE_DIRECTORIES "/apps/intel-mpi/2021.10.0/include;/apps/intel-ct/2023.2.0/compiler-llvm/linux/include;/opt/Modules/v4.3.0/init/ksh-functions;/apps/intel-oneapi/compiler/2023.2.0/linux/compiler/include/intel64;/apps/intel-oneapi/compiler/2023.2.0/linux/compiler/include;/usr/local/include;/apps/intel-oneapi/compiler/2023.2.0/linux/lib/clang/17/include;/usr/include")
set(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "ifport;ifcoremt;imf;svml;m;ipgo;irc;pthread;svml;c;gcc;gcc_s;irc_s;dl;c")
set(CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES "/apps/intel-mpi/2021.10.0/libfabric/lib;/apps/intel-mpi/2021.10.0/lib/release;/apps/intel-mpi/2021.10.0/lib;/apps/intel-ct/2023.2.0/compiler-llvm/linux/compiler/lib/intel64_lin;/apps/intel-ct/2023.2.0/compiler-llvm/linux/lib/x64;/apps/intel-ct/2023.2.0/compiler-llvm/linux/lib;/apps/intel-oneapi/compiler/2023.2.0/linux/compiler/lib/intel64_lin;/apps/intel-oneapi/compiler/2023.2.0/linux/lib/clang/17/lib/linux;/apps/intel-oneapi/compiler/2023.2.0/linux/lib/clang/17/lib/x86_64-unknown-linux-gnu;/apps/intel-oneapi/compiler/2023.2.0/linux/lib;/half-root/usr/lib/gcc/x86_64-redhat-linux/8;/half-root/usr/lib/gcc;/half-root/usr/lib64;/lib64;/usr/lib64;/half-root/usr/lib;/lib;/usr/lib")
set(CMAKE_Fortran_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
