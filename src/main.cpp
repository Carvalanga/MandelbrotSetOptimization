#include "app.hpp"
#include "commandLineHandler.hpp"



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
			break;
	}

	return 0;
}