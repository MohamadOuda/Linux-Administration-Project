cmake_minimum_required(VERSION 3.10)

# Project name
project(CryptoAppCMAKE_MohamedOuda)

# Directories for object files and libraries
set(GEN_DIR "${CMAKE_BINARY_DIR}/out/gen")
set(LIB_DIR "${CMAKE_BINARY_DIR}/out/lib")
set(BIN_DIR "${CMAKE_BINARY_DIR}")

# Ensure the output directories exist
file(MAKE_DIRECTORY ${GEN_DIR})
file(MAKE_DIRECTORY ${LIB_DIR})
file(MAKE_DIRECTORY ${BIN_DIR})

# Include the subdirectories for caesar_cipher and xor_cipher
# Add both the source and binary directories for out-of-tree builds
add_subdirectory(${CMAKE_SOURCE_DIR}/../Modules/caesar_cipher ${GEN_DIR}/caesar_cipher)
add_subdirectory(${CMAKE_SOURCE_DIR}/../Modules/xor_cipher ${GEN_DIR}/xor_cipher)

# Application source
set(APP_SRC ${CMAKE_SOURCE_DIR}/app.c)

# Create executable and link libraries
add_executable(output ${APP_SRC})

# Link the Caesar and XOR libraries to the output executable
target_link_libraries(output PRIVATE caesar xor)

# Specify where the final output should be placed
set_target_properties(output PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${BIN_DIR}
)

# Add include directories for Caesar and XOR modules
target_include_directories(output PRIVATE
    ${CMAKE_SOURCE_DIR}/../Modules/caesar_cipher/inc
    ${CMAKE_SOURCE_DIR}/../Modules/xor_cipher/inc
)
