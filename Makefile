CC = gcc
C_FLAGS = -c
OBJECTS = $(addsuffix .o,$(SRC))
PGM = keeplog
SRC1 = $(wildcard *.c)
SRC = $(patsubst %.c,%,$(SRC1))

$(PGM): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ 

$(OBJECTS): %.o: %.c
	$(CC) $(C_FLAGS) $< -o $@

clean:
	-rm *.o $(PGM)
