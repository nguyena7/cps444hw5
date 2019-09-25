CC = gcc
C_FLAGS = -c -I$(HOME)/include/
OBJECTS = $(addsuffix .o,$(SRC))
PGM = keeplog
SRC1 = $(wildcard *.c)
SRC = $(patsubst %.c,%,$(SRC1))
INCLUDE = $(HOME)/include/keeplog_helper.h
LIBS = -L$(HOME)/lib -lkeeplog_helper -llist

all: $(PGM)

$(PGM): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LIBS) -o $@ 

$(PGM).o: $(PGM).c $(INCLUDE)
	$(CC) $(C_FLAGS) $(PGM).c

clean:
	-rm *.o $(PGM)
