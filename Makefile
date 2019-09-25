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
PGM = keeplog 
C_FLAGS = -c

all: $(PGM)

$(PGM): listlib.o keeplog.o keeplog_helper.o

.c.o:
	$(CC) $(C_FLAGS) $< -o $@

clean:
	-rm *.o $(PGM)
