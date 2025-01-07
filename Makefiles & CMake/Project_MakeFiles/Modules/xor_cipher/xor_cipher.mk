ROOT_DIR = ../#this make file is invoked from main Makefile in Application folder 
#				when invoked current directory doesn't change
MODULES_DIR = $(ROOT_DIR)/Modules
XOR_CIPHER_DIR = $(MODULES_DIR)/xor_cipher
XOR_INC_DIR = $(XOR_CIPHER_DIR)/inc
XOR_SRC_DIR = $(XOR_CIPHER_DIR)/src
XOR_OBJ_DIR = $(ROOT_DIR)/Application/out/gen
XOR_LIB_DIR = $(ROOT_DIR)/Application/out/lib

XOR_SRC = $(XOR_SRC_DIR)/xor_encrypt.c $(XOR_SRC_DIR)/xor_decrypt.c
XOR_OBJ = $(XOR_OBJ_DIR)/xor_encrypt.o $(XOR_OBJ_DIR)/xor_decrypt.o
# Static Library File
XOR_LIB = $(XOR_LIB_DIR)/libxor.so

# Compiler and flags
CC = gcc
CFLAGS = -Wall -fPIC -I$(XOR_INC_DIR)
#-Wall: Enables all compiler’s warning messages.
#-fPIC: Generates position-independent code, which is necessary for creating shared libraries.
#-I$(XOR_INC_DIR): Adds the XOR_INC_DIR to the list of directories to search for header files.

LDFLAGS = -shared
#-shared: Tells the linker to create a shared library.

all: $(XOR_LIB)

$(XOR_OBJ_DIR)/%.o: $(XOR_SRC_DIR)/%.c
	mkdir -p $(XOR_OBJ_DIR)
	@echo "Compiling $< into $@"
	$(CC) $(CFLAGS) -c $< -o $@

# $< refers to the first prerequisite of the rule, which in this case is a .c source file.
# $@ refers to the target of the rule, which is the corresponding .o object file.

$(XOR_LIB): $(XOR_OBJ)
	mkdir -p $(XOR_LIB_DIR)
	$(CC) $(LDFLAGS) -o $(XOR_LIB) $(XOR_OBJ)

#$(CC) $(LDFLAGS) -o $(XOR_LIB) $(XOR_OBJ): Links the object files into the shared library:
#$(LDFLAGS) includes -shared for creating a shared library.
#-o $(XOR_LIB) specifies the output file (e.g., libxor.so).
#$(XOR_OBJ) lists the object files to be linked.

clean:
	rm -rf $(XOR_OBJ) $(XOR_LIB)

.PHONY: all clean
