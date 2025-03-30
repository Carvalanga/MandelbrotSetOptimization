#include "testMandelbrot.hpp"


static const float LEFT_TEST_POS  = -1.5;
static const float RIGHT_TEST_POS =  0.5;
static const float UP_TEST_POS    =   -1;
static const float DOWN_TEST_POS  =    1;

static const float DELTA 	  	  =  0.01;
static const float LOW_SCALE      =  0.001;
static const float HIGH_SCALE     =  0.0001;

static const int MAX_LOOPS = 2;


static void leftRightTest(MANDELBROT_SET* mdSet, MANDELBOT_TEST* test);
static void upDownTest(MANDELBROT_SET* mdSet, MANDELBOT_TEST* test);


void testMandelbrotSet(MANDELBROT_SET* mdSet, MANDELBOT_TEST* test)
{
	switch(test->type)
	{
		case START:
		{
			//TODO: add off of scalebable
			mdSet->centerPosition = {LEFT_TEST_POS, 0};
			test->type = LEFT_RIGHT;
			mdSet->scale = LOW_SCALE;
			test->loops += 1;
			break;
		}

		case LEFT_RIGHT:
			leftRightTest(mdSet, test);
			break;

		case UP_DOWN:
			upDownTest(mdSet, test);
			break;

		case CHECK_STAT:
			if(test->loops >= MAX_LOOPS)
			{
				mdSet->centerPosition = {0, 0};
				test->type = NO_TEST;
			}
			else
			{
				mdSet->centerPosition = {LEFT_TEST_POS, 0};
				mdSet->scale          = HIGH_SCALE;
				test->type            = LEFT_RIGHT;
				test->loops 		 += 1;
			}
			break;

		default:
			test->type == NO_TEST;
			break;
	}
}

static void leftRightTest(MANDELBROT_SET* mdSet, MANDELBOT_TEST* test)
{
	if(mdSet->centerPosition.x <= RIGHT_TEST_POS)
		mdSet->centerPosition.x += DELTA;
	else
	{
		test->type = UP_DOWN;
		mdSet->centerPosition = {0, DOWN_TEST_POS};
	}
}

static void upDownTest(MANDELBROT_SET* mdSet, MANDELBOT_TEST* test)
{
	if(mdSet->centerPosition.y >= UP_TEST_POS)
		mdSet->centerPosition.y -= DELTA;
	else
		test->type = CHECK_STAT;
}