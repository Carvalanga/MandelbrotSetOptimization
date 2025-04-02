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

	sf::Vector2f matrixSize;
	sf::Vector2f centerPosition;
	float        scale;
	int          maxCalculationsCnt;
	int 	     isScalable;
	int	         isDrawable;
};

void fillMandelbrotSet(MANDELBROT_SET* mdSet);

MANDELBROT_SET mandelbrotSetCtor(int matrixSizeX, int matrixSizeY);
sf::VertexArray setVertexMatrix(int sizeX, int sizeY);

#endif