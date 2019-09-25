# 
#		filename: Makefile
#
#		description: makefiles for HW5
#
#		author: Nguyen, Antall
#
#		login_id: FA_19_CPS444_18
#
#		class: CPS 444
#		Instructor: Perugini
#		Assignment: Homework 5
#
#		Assigned: September 17
#		Due: October 1
#
#

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
