#include "app.hpp"
#include "mandelbrotSet.hpp"
#include<unistd.h>

int main()
{
	printf("%lu\n", sizeof(MANDELBROT_SET));
	runApp();
}