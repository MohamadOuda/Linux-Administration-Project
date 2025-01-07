# Create a shared library for the XOR cipher
add_library(xor SHARED
    src/xor_encrypt.c
    src/xor_decrypt.c
)

# Specify where to place the object files
set_target_properties(xor PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${LIB_DIR}
    LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR}
    RUNTIME_OUTPUT_DIRECTORY ${LIB_DIR}
)

# Include header directory
target_include_directories(xor PRIVATE inc)
