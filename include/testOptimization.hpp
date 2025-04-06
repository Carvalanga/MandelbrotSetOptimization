#ifndef TEST_OPTIMISATION_H
#define TEST_OPTIMISATION_H

struct TEST_UNIT
{
	double elapsedTime;
	double globalTime;
};

struct TEST_RESULT
{
	double middleTimeForFilling;
	double error;
};

void testOptimisation(int loopCnt);

#endif