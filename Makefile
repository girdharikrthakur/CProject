CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -Iinclude
TARGET = app
SRC = src/main.c

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
