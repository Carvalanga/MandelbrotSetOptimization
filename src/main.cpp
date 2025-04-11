#include "app.hpp"
#include "commandLineHandler.hpp"
#include "testOptimization.hpp"

int main(int argc, char* argv[])
{
	PROGRAMM_STATUS status = handleCommandArgs(argc, argv);

	if(errorHandler(status.mode))
		return 1;

	switch (status.mode)
	{
		case PROGRAMM_GRAPHICS:
			runApp();
			break;

		case PROGRAMM_TEST:
			testOptimisation(status.testCnt);
			break;
	}

	return 0;
}