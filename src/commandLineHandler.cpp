#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "commandLineHandler.hpp"

const char testModeString[] = "--test";

#define ERR_PRINT(text) fprintf(stderr, text);

int errorHandler(PROGRAMM_MODE mode)
{
	switch(mode)
	{
		case PROGRAMM_CNT_ERROR:
			ERR_PRINT("Too much argumets!\n");
			break;

		case PROGRAMM_ARG_ERROR:
			ERR_PRINT("Incorrect argument! Input \"--test\" to test programm\n");
			break;

		case PROGRAMM_NUM_ERROR:
			ERR_PRINT("Incorrect number! Input positive nubmer. As large as better!\n");
			break;

		case PROGRAMM_UNKNOWN_ERR0R:
			ERR_PRINT("Unknown error!\n");

		default:
			return 0;
	}

	return 1;
}

#undef ERR_PRINT

PROGRAMM_STATUS handleCommandArgs(int argc, char* argv[])
{
	PROGRAMM_STATUS status = {};
	status.testCnt = DEFAULT_TESTS_CNT;

	if(argc > 3)
	{
		status.mode = PROGRAMM_CNT_ERROR;
		return status;
	}

	if(argc == 1)
	{
		status.mode = PROGRAMM_GRAPHICS;
		return status;
	}

	if(argc > 1)
	{
		if(strcmp(argv[1], testModeString) != 0)
		{
			status.mode = PROGRAMM_ARG_ERROR;
			return status;
		}

		status.mode = PROGRAMM_TEST;
		if(argc != 3)
			return status;

		int testCnt = 0;
		testCnt = atoi(argv[2]);

		if(testCnt <= 0)
		{
			status.mode = PROGRAMM_NUM_ERROR;

			return status;
		}

		status.testCnt = testCnt;
	}

	return status;
}