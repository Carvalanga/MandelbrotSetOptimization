#ifndef COMMAND_LINE_HANDLER_H
#define COMMAND_LINE_HANDLER_H

const int DEFAULT_TESTS_CNT = 5000;

enum PROGRAMM_MODE
{
	PROGRAMM_UNKNOWN_ERR0R = 0,
	PROGRAMM_CNT_ERROR 	   = 1,
	PROGRAMM_ARG_ERROR     = 2,
	PROGRAMM_NUM_ERROR     = 3,
	PROGRAMM_GRAPHICS 	   = 4,
	PROGRAMM_TEST  	  	   = 5,
};

struct PROGRAMM_STATUS
{
	PROGRAMM_MODE mode;
	int testCnt;
};

int errorHandler(PROGRAMM_MODE mode);
PROGRAMM_STATUS handleCommandArgs(int argc, char* argv[]);

#endif