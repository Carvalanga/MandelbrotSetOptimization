#include <stdio.h>
#include <time.h>
#include <math.h>

#include "SFML/Graphics.hpp"
#include "mandelbrotSet.hpp"
#include "testOptimization.hpp"

#define GET_SECONDS(ts2, ts1) (double)((ts2.tv_sec - ts1.tv_sec) + (ts2.tv_nsec - ts1.tv_nsec) / 1e9)
#define GET_MILLISECONDS(ts2, ts1) (double)(((ts2.tv_sec - ts1.tv_sec) + (ts2.tv_nsec - ts1.tv_nsec) / 1e9) * 1e3)

static const double TEST_SCALE = 625e-6;

static const char* GNU_COMMANDS[] =
{
	"set output \"graph.png\"\n",
	"set terminal png\n",
	"set yrange [0:*]\n",
	"set xrange [0:*]\n"
	"set key outside\n",
	"plot \"noOpt.txt\" with lines, \"intrinOpt.txt\" with lines, \"conveerOpt.txt\" with lines\n"
};

static double calcError(TEST_UNIT* tests, double middleTime, int loopCnt)
{
	double errorSum = 0;

	printf("middle = %lg\n", middleTime);
	for(int i = 0; i < loopCnt; i++)
		errorSum += pow(tests[i].elapsedTime - middleTime, 2);

	printf("errorSum = %lg\n", errorSum);

	double err = sqrt(errorSum) / loopCnt;

	printf("err = %lg\n", err);
	return err;
}

static TEST_RESULT testFunc(MANDELBROT_SET* mdSet, TEST_UNIT* tests, mdFillFunc func, FILE* dumpFile, int loopCnt)
{

	struct timespec globalStart = {},
					localStart  = {},
					end         = {};

	clock_gettime(CLOCK_MONOTONIC, &globalStart);

	for(int i = 0; i < loopCnt; i++)
	{
		clock_gettime(CLOCK_MONOTONIC, &localStart);
		func(mdSet);
		clock_gettime(CLOCK_MONOTONIC, &end);

		tests[i].elapsedTime = GET_MILLISECONDS(end, localStart);
		tests[i].globalTime  = GET_SECONDS(end, globalStart);
	}

	for(int i = 0; i < loopCnt; i++)
		fprintf(dumpFile, "%lg %lg\n", tests[i].globalTime, tests[i].elapsedTime);

	TEST_RESULT result = {};
	result.middleTimeForFilling = (tests[loopCnt - 1].globalTime / loopCnt) * 1e3;
	result.error 				= calcError(tests, result.middleTimeForFilling, loopCnt);

	return result;
}

void testOptimisation(int loopCnt)
{
	MANDELBROT_SET mdSet = mandelbrotSetCtor(DEFAULT_SIZE_X, DEFAULT_SIZE_Y);
	mdSet.scale = TEST_SCALE;

	TEST_UNIT* tests = (TEST_UNIT*)calloc(loopCnt, sizeof(TEST_UNIT));

	FILE* testNoOpt  = fopen("noOpt.txt",     "w");
	FILE* intrinOpt  = fopen("intrinOpt.txt", "w");
	FILE* conveerOpt = fopen("conveerOpt.txt","w");

	TEST_RESULT res1 = testFunc(&mdSet, tests, fillMandelbrotSetNoOpt, testNoOpt, loopCnt);
	testFunc(&mdSet, tests, fillMandelbrotSetIntrin, intrinOpt, loopCnt);
	testFunc(&mdSet, tests, fillMandelbrotSetIntrinConveer, conveerOpt, loopCnt);
	// printf("middle time = (%lg +- %lg) millseconds (%lg%%)\n", res1.middleTimeForFilling, res1.error, res1.error / res1.middleTimeForFilling * 100);

	// TEST_RESULT res2 = testFunc(fillMandelbrotSetIntrinConveer, testNoOpt, loopCnt);
	// printf("middle time = (%lg +- %lg) millseconds (%lg%%)\n", res2.middleTimeForFilling, res2.error, res2.error / res2.middleTimeForFilling * 100);

	fclose(testNoOpt);
	fclose(intrinOpt);
	fclose(conveerOpt);

	FILE* gnuplotPipe = popen("gnuplot", "w");

	for(int i = 0; i < sizeof(GNU_COMMANDS) / sizeof(GNU_COMMANDS[0]); i++)
		fputs(GNU_COMMANDS[i], gnuplotPipe);

	free(tests);
	pclose(gnuplotPipe);

}

#undef GET_SECONDS
#undef GET_MILLISECONDS