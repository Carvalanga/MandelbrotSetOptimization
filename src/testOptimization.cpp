#include <stdio.h>
#include <time.h>
#include <math.h>

#include "SFML/Graphics.hpp"
#include "mandelbrotSet.hpp"
#include "testOptimization.hpp"

#define GET_SECONDS(ts2, ts1) (double)((ts2.tv_sec - ts1.tv_sec) + (ts2.tv_nsec - ts1.tv_nsec) / 1e9)
#define GET_MILLISECONDS(ts2, ts1) (double)(((ts2.tv_sec - ts1.tv_sec) + (ts2.tv_nsec - ts1.tv_nsec) / 1e9) * 1e3)

static int iterations = 0;

static const int 	NUM_OF_TESTS     = 3;
static const double TEST_SCALE       = 625e-6;
static const double LABEL_FIRST_LINE = 0.7;
static const double LABEL_OFFSET 	 = 0.1;

static const char* FILE_NAMES[NUM_OF_TESTS] =
{
	"noOpt.txt",
	"intrinOpt.txt",
	"conveerOpt.txt"
};

static const char* GNU_COMMANDS[] =
{
	"set output \"graph.png\"\n",
	"set terminal png\n",
	"set yrange [0:*]\n",
	"set xrange [0:*]\n"
	"set key outside\n",
	"plot \"noOpt.txt\" with lines, \"intrinOpt.txt\" with lines, \"conveerOpt.txt\" with lines \n"
};

static const mdFillFunc TEST_FUNTIONS[] =
{
	fillMandelbrotSetNoOpt,
	fillMandelbrotSetIntrin,
	fillMandelbrotSetIntrinConveer
};

static double calcError(double* tests, double middleTime, int loopCnt)
{
	double errorSum = 0;

	for(int i = 0; i < loopCnt; i++)
		errorSum += pow(tests[i] - middleTime, 2);

	double err = sqrt(errorSum) / loopCnt;

	return err;
}

static TEST_RESULT testFunc(MANDELBROT_SET* mdSet, double* tests, mdFillFunc func, FILE* dumpFile, int loopCnt)
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

		tests[i] = GET_MILLISECONDS(end, localStart);

		printf("%.2lf%%\r", ((float)iterations++ / (loopCnt * NUM_OF_TESTS)) * 100);
		fflush(stdout);
	}
	clock_gettime(CLOCK_MONOTONIC, &end);

	double sumTime = GET_SECONDS(end, globalStart);

	for(int i = 0; i < loopCnt; i++)
		fprintf(dumpFile, "%d %lg\n", i, tests[i]);

	TEST_RESULT result = {};
	result.middleTimeForFilling = (sumTime / loopCnt) * 1e3;
	result.error 				= calcError(tests, result.middleTimeForFilling, loopCnt);

	return result;
}

void callGnuplot(TEST_RESULT results[NUM_OF_TESTS])
{
	FILE* gnuplotPipe = popen("gnuplot", "w");

	fprintf(gnuplotPipe, "set rmargin at screen 0.5\n");

	for(int i = 0; i < NUM_OF_TESTS; i++)
		fprintf(gnuplotPipe, "set label \"%s: (%.2lf ± %.2lf) ms\" at screen 0.98, %.1lg right\n",
				FILE_NAMES[i], results[i].middleTimeForFilling, results[i].error, LABEL_FIRST_LINE - LABEL_OFFSET * i);

	for(int i = 0; i < sizeof(GNU_COMMANDS) / sizeof(GNU_COMMANDS[0]); i++)
		fputs(GNU_COMMANDS[i], gnuplotPipe);

	pclose(gnuplotPipe);
}

void testOptimisation(int loopCnt)
{
	MANDELBROT_SET mdSet = mandelbrotSetCtor(DEFAULT_SIZE_X, DEFAULT_SIZE_Y);
	mdSet.scale = TEST_SCALE;

	double* tests = (double*)calloc(loopCnt, sizeof(double));

	FILE* testFiles[NUM_OF_TESTS] = {};

	for(int i = 0; i < NUM_OF_TESTS; i++)
		testFiles[i] = fopen(FILE_NAMES[i], "w");

	TEST_RESULT results[NUM_OF_TESTS] = {};

	for(int i = 0; i < NUM_OF_TESTS; i ++)
		results[i] = testFunc(&mdSet, tests, TEST_FUNTIONS[i], testFiles[i], loopCnt);

	free(tests);

	for(int i = 0; i < NUM_OF_TESTS; i++)
		fclose(testFiles[i]);

	callGnuplot(results);
}

#undef GET_SECONDS
#undef GET_MILLISECONDS