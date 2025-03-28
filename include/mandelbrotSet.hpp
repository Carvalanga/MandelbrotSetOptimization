#ifndef MANDELBROT_H
#define MANDELBROT_H

#include "SFML/Graphics.hpp"

enum MANDELBROT_STATUS
{
	NOT_DRAWABLE = 0,
	NOT_SCALABLE = 0,
	DRAWABLE 	 = 1,
	SCALABLE 	 = 1,
};

struct MANDELBROT_SET
{
	sf::VertexArray matrix;

	int matrixSizeX;
	int matrixSizeY;
	float     scale;
	int       maxCalculationsCnt;
	int 	  isScalable;
	int	      isDrawable;
};

MANDELBROT_SET fillMandelbrotSet(MANDELBROT_SET mdSet, float xOffset, float yOffset);
MANDELBROT_SET mandelbrotSetCtor(int matrixSizeX, int matrixSizeY);
sf::VertexArray setVertexMatrix(int sizeX, int sizeY);

#endif