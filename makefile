CC = gcc
BUILD_F = build/
BIN_F = bin/
SRC_F = src/
TEST_F = test/
SOURCES_O = $(BUILD_F)main.o $(BUILD_F)deposit.o
KEYS = -Wall -Werror

.PHONY: all clean

all: bin build deposit

deposit: $(SOURCES_O)
	$(CC) $(KEYS) $(BUILD_F)main.o $(BUILD_F)deposit.o -o $(BIN_F)deposit
$(BUILD_F)main.o : $(SRC_F)main.c
	$(CC) $(KEYS) -c $(SRC_F)main.c -o $(BUILD_F)main.o
$(BUILD_F)deposit.o : $(SRC_F)deposit.c
	$(CC) $(KEYS) -c $(SRC_F)deposit.c -o $(BUILD_F)deposit.o
clean:
	rm -rf $(BIN_F)*
	rm -rf $(BUILD_F)*
	rmdir $(BIN_F)
	rmdir $(BUILD_F)
test: bin build $(BUILD_F)tests.o
	$(CC) $(KEYS) $(BUILD_F)tests.o -o $(BIN_F)tests
$(BUILD_F)tests.o : $(TEST_F)main.c
	$(CC) $(KEYS) -c $(TEST_F)main.c -o $(BUILD_F)tests.o
bin:
	test ! -d $(BIN_F) && mkdir $(BIN_F)
build:
	test ! -d $(BUILD_F) && mkdir $(BUILD_F) 
