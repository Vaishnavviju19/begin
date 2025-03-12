# Compiler
CC = g++
CFLAGS = -Wall -Wextra -std=c++17

# Target executable
TARGET = my_app

# Build rules
all: $(TARGET)

$(TARGET): main.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

clean:
	rm -f *.o $(TARGET)
