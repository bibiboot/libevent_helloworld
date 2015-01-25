CC=gcc
SHELL:=$(shell which bash) -e -o pipefail
UNAME_S:=$(shell uname -s)
_CFLAGS=-Wall -Wextra -Werror -Wshadow -Winline -D_GNU_SOURCE -std=c99 -g

BIN_DIR=$(CURDIR)/bin
SRC_DIR=$(CURDIR)/src
BUILD_DIR=$(CURDIR)/build

# All header files in libraries
INCLUDES=-I$(SRC_DIR) -I$(CURDIR) \
         -I$(CURDIR)/deps/uthash \
         -I$(BUILD_DIR)/libevent/include \
         -I$(NODE_A_DIR) \
         -lpthread \

LIBS=-lpthread -levent

LIB_PATHS=-L$(BUILD_DIR)/libevent/lib

# All .c files in src folder
_SOURCES=$(shell find $(SRC_DIR) -type f -iname '*.[c]')

# Build
.PHONY: build
build:
	$(CC) -o $(BIN_DIR)/r $(_SOURCES) $(INCLUDES) $(LIB_PATHS) $(LIBS)

clean:
	@echo "Deleting bin folder"
	rm -rf $(BIN_DIR)/*
