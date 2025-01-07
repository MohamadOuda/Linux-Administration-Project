ROOT_DIR = ../
MODULES_DIR = $(ROOT_DIR)/Modules
CAESAR_CIPHER_DIR = $(MODULES_DIR)/caesar_cipher
CAESAR_INC_DIR = $(CAESAR_CIPHER_DIR)/inc
CAESAR_SRC_DIR = $(CAESAR_CIPHER_DIR)/src
CAESAR_OBJ_DIR = $(ROOT_DIR)/Application/out/gen
CAESAR_LIB_DIR = $(ROOT_DIR)/Application/out/lib

CAESAR_SRC = $(CAESAR_SRC_DIR)/caesar_encrypt.c $(CAESAR_SRC_DIR)/caesar_decrypt.c
CAESAR_OBJ = $(CAESAR_OBJ_DIR)/caesar_encrypt.o $(CAESAR_OBJ_DIR)/caesar_decrypt.o
# Static Library File
CAESAR_LIB = $(CAESAR_LIB_DIR)/libcaesar.a

# Compiler and flags
CC = gcc
CFLAGS = -Wall

all: $(CAESAR_LIB)




$(CAESAR_OBJ_DIR)/%.o: $(CAESAR_SRC_DIR)/%.c
	mkdir -p $(CAESAR_OBJ_DIR)
	@echo "Compiling $< into $@"
	$(CC) $(CFLAGS) -I$(CAESAR_INC_DIR) -c $< -o $@

# $< refers to the first prerequisite of the rule, which in this case is a .c source file.
# $@ refers to the target of the rule, which is the corresponding .o object file.

$(CAESAR_LIB): $(CAESAR_OBJ)
	mkdir -p $(CAESAR_LIB_DIR)
	ar rcs $(CAESAR_LIB) $(CAESAR_OBJ)

#This rule creates the static library (libcaesar.a) by combining the object files.
#ar rcs: The archiver command to create a static library.
#r inserts the object files into the archive.
#c creates the archive if it doesn’t exist.
#s writes an index into the archive.

clean:
	rm -rf $(CAESAR_OBJ) $(CAESAR_LIB)

.PHONY: all clean
