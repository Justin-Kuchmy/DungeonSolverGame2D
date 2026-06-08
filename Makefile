CC = gcc
CFLAGS = -Wall -Wextra -O2 $(shell sdl2-config --cflags)
LIBS = $(shell sdl2-config --libs) -lSDL2_image -lSDL2_mixer -lSDL2_ttf

SRCS = main.c
OBJS = $(SRCS:.c=.o)
TARGET = game

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET) $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
