cmake_minimum_required(VERSION 3.10)

project(CppCommon)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(SOURCES
    cmd/main.cc
)

set(HEADERS

)

add_executable(CppCommon ${SOURCES})

target_compile_options(CppCommon PRIVATE
-Wall        # Enable all warnings
-Wextra      # Enable extra warnings
-Wpedantic   # Enable strict ISO compliance
-Wshadow     # Warn when a variable shadows another variable
-Wnon-virtual-dtor # Warn when a class with virtual functions has a non-virtual destructor
-Wold-style-cast # Warn for C-style casts
-Wcast-align # Warn for potential performance problem casts
-Wunused     # Warn on anything being unused
-Woverloaded-virtual # Warn if overload (not override) a virtual function
-Wconversion # Warn on type conversions that may lose data
-Wsign-conversion # Warn on sign conversions
-Wmisleading-indentation # Warn if indentation implies blocks where blocks do not exist
-Wnull-dereference # Warn if a null dereference is detected
)
