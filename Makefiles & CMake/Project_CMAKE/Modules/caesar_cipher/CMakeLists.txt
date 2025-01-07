# Create a static library for the Caesar cipher
add_library(caesar STATIC
    src/caesar_encrypt.c
    src/caesar_decrypt.c
)

# Specify where to place the object files
set_target_properties(caesar PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${LIB_DIR}
    LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR}
    RUNTIME_OUTPUT_DIRECTORY ${LIB_DIR}
)

# Include header directory
target_include_directories(caesar PRIVATE inc)
