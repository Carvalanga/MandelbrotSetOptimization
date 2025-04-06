#ifndef TEST_MANDELBROT_H
#define TEST_MANDELBROT_H

#include "mandelbrotSet.hpp"

enum TEST_TYPE
{
	NO_TEST    = 0,
	START      = 1,
	EXECUTE    = 1,
	LEFT_RIGHT = 2,
	UP_DOWN    = 3,
	CHECK_STAT = 4,
};

struct MANDELBOT_TEST
{
	TEST_TYPE type;
	int loops;
};

void testMandelbrotSet(MANDELBROT_SET* mdSet, MANDELBOT_TEST* test);

#endif