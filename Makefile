PGM = keeplog
CC = gcc

all: keeplog

keeplog: listlib.o keeplog.o keeplog_helper.o
	$(CC) listlib.o keeplog.o keeplog_helper.o -o keeplog

listlib.o: listlib.c listlib.h
	$(CC) listlib.c -c

keeplog.o: keeplog.c keeplog_helper.h
	$(CC) keeplog.c -c

keeplog_helper.o: keeplog_helper.c listlib.h
	$(CC) keeplog_helper.c -c

clean:
	rm *.o $(PGM)
