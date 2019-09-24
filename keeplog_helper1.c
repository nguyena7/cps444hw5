#include <stdio.h>
#include <stdlib.h>
#include "listlib.h"

int runproc(char* cmd) { /* execute cmd; store cmd and time in history list */
   data_t execute;

   if (time(&(execute.time)) == -1)
      return -1;
   execute.string = cmd;
   if (system(cmd) == -1)           /* command could not be executed at all */
      return -1;
   return adddata(execute);
}
