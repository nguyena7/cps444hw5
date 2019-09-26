CC = gcc
C_FLAGS = -c
OBJECTS = $(addsuffix .o,$(SRC))
PGM = keeplog
SRC1 = $(wildcard *.c)
SRC = $(patsubst %.c,%,$(SRC1))
LIBS = -llist -lkeeplog_helper1 -lkeeplog_helper2

$(PGM): $(OBJECTS)
	$(CC) $(OBJECTS) $(LIBS) -o $@ 

$(OBJECTS): %.o: %.c
	$(CC) $(C_FLAGS) $< -o $@

clean:
	-rm *.o $(PGM)
