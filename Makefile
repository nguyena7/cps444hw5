CC = gcc
PGM = keeplog 
C_FLAGS = -c

all: $(PGM)

$(PGM): listlib.o keeplog.o keeplog_helper.o

.c.o:
	$(CC) $(C_FLAGS) $< -o $@

clean:
	-rm *.o $(PGM)
