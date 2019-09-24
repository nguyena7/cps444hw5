CC = gcc
PGM = keeplog 
C_FLAGS = -c
INCLUDE = ~/include/

all: $(PGM)

$(PGM): listlib.o keeplog.o keeplog_helper.o $(INCLUDE)liblist.a $(INCLUDE)libkeeplog_helper.a

.c.o:
	$(CC) $(C_FLAGS) $< -o $@

$(INCLUDE)liblist.a: listlib.o
	ar rcs $(INCLUDE)liblist.a listlib.o

$(INCLUDE)libkeeplog_helper.a: keeplog_helper.o
	ar rcs $(INCLUDE)libkeeplog_helper.a keeplog_helper.o	

libs: ~/lib/liblist.a ~/include/libkeeplog_helper.a
	

clean:
	-rm *.o $(PGM)
