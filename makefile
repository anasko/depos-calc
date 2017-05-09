CC = gcc
BUILD_F = build/
BIN_F = bin/
SRC_F = src/
TEST_F = test/
SOURCES_O = build/src/main.o build/src/deposit.o
CFLAGS = -Wall -Werror

.PHONY: all clean

all: bin build deposit test 


deposit: $(SOURCES_O)
	 $(CC) $(CFLAGS) $(BUILD_F)$(SRC_F)main.o $(BUILD_F)$(SRC_F)deposit.o -o $(BIN_F)deposit

$(BUILD_F)$(SRC_F)deposit.o : $(SRC_F)deposit.c
	$(CC) $(CFLAGS) -c $(SRC_F)deposit.c -o $(BUILD_F)$(SRC_F)deposit.o

$(BUILD_F)$(SRC_F)main.o : $(SRC_F)main.c
	$(CC) $(CFLAGS) -c $(SRC_F)main.c -o $(BUILD_F)$(SRC_F)main.o

clean:
	rm -rf $(BIN_F)*
	rm -rf $(BUILD_F)*

mkD:
	mkdir bin
	mkdir build
	mkdir build/src
	mkdir build/test


rmD:
	rm -rf $(BIN_F)
	rm -rf $(BUILD_F)


bin:
	test ! -d bin && mkdir bin

build:
	test ! -d build&& mkdir build
	test ! -d build/src && mkdir build/src
	test ! -d build/test && mkdir build/test


$(BUILD_F)$(TEST_F)deposit_test.o : $(TEST_F)deposit_test.o 
	$(CC) $(CFLAGS) -c $(TEST_F)deposit_test.o  -o $(BUILD_F)$(TEST_F)deposit_test.o 

$(BUILD_F)$(TEST_F)validation_test.o : $(TEST_F)validation_test.o 
	$(CC) $(CFLAGS) -c $(TEST_F)validation_test.o  -o $(BUILD_F)$(TEST_F)validation_test.o 

$(BUILD_F)$(TEST_F)main.o : $(TEST_F)main.o 
	$(CC) $(CFLAGS) -c $(TEST_F)main.o  -o $(BUILD_F)$(TEST_F)main.o 

test: bin tests.o
	$(CC) $(CFLAGS) $(BIN_F)tests.o -o $(BIN_F)tests

tests.o:
	$(CC) $(CFLAGS) -c $(TEST_F)main.c -o $(BIN_F)tests.o

