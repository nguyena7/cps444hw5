#include <stdio.h>
#include <stdlib.h>
#include "listlib.h"

void showhistory(FILE* f) {        /* output the history list of the file f */
   data_t data;
   int key;

   key = accessdata();
   if (key == -1) {
      fprintf(f, "No history\n");
      return;
   }
   while (!getdata(key, &data) && (data.string != NULL)) {
      fprintf(f, "Command: %s\nTime: %s\n", data.string, ctime(&(data.time)));
      free(data.string);
   }
}
