# Main Directories
ROOT_DIR = ..
APP_DIR = $(ROOT_DIR)/Application
MODULES_DIR = $(ROOT_DIR)/Modules
# Modules Directories
CAESAR_CIPHER_DIR = $(MODULES_DIR)/caesar_cipher
XOR_CIPHER_DIR = $(MODULES_DIR)/xor_cipher
# Modules MakeFiles
CAESAR_CIPHER_MK = $(CAESAR_CIPHER_DIR)/caesar_cipher.mk
XOR_CIPHER_MK = $(XOR_CIPHER_DIR)/xor_cipher.mk
# Application Directories
APP_OUT_DIR = $(APP_DIR)/out
APP_OBJ_DIR = $(APP_OUT_DIR)/gen
APP_LIB_DIR = $(APP_OUT_DIR)/lib
APP_BIN = $(APP_DIR)/output


# Application Source files
APP_SRC = $(APP_DIR)/app.c
# Application Object files
APP_OBJ = $(APP_OBJ_DIR)/app.o

# Compiler and flags
CC = gcc
CFLAGS = -Wall #enable all warnings
LDFLAGS = -L$(APP_LIB_DIR) -lcaesar -lxor

all: caesar_cipher xor_cipher $(APP_BIN)

caesar_cipher: 
	$(MAKE) -f $(CAESAR_CIPHER_MK)

xor_cipher: 
	$(MAKE) -f $(XOR_CIPHER_MK)

$(APP_BIN): $(APP_OBJ)
	$(CC) $(APP_OBJ) $(LDFLAGS) -o $@ 
# $@ gives target name

$(APP_OBJ): $(APP_SRC)
	mkdir -p $(APP_OBJ_DIR)
	$(CC) $(CFLAGS) -I$(CAESAR_CIPHER_DIR)/inc -I$(XOR_CIPHER_DIR)/inc -c $(APP_SRC) -o $@

clean:
	$(MAKE) -f $(CAESAR_CIPHER_MK) clean
	$(MAKE) -f $(XOR_CIPHER_MK) clean
	rm -rf $(APP_OUT_DIR) $(APP_BIN)

.PHONY: clean all caesar_cipher xor_cipher
#In the Makefile you provided, you use .PHONY to declare that clean, all, caesar_cipher, and xor_cipher are not actual files
