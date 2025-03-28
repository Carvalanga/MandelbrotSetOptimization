#include "mandelbrotSet.hpp"

static const float DEFAULT_SCALE 			= 0.01;
static const int   DEFAULT_CALCULATIONS_CNT = 256;

MANDELBROT_SET mandelbrotSetCtor(int matrixSizeX, int matrixSizeY)
{
	sf::VertexArray matrix = setVertexMatrix(matrixSizeX, matrixSizeY);

	MANDELBROT_SET mdSet = {matrix,
							matrixSizeX,
							matrixSizeY,
							DEFAULT_SCALE,
							DEFAULT_CALCULATIONS_CNT,
							NOT_SCALABLE,
							DRAWABLE
							};

	return mdSet;
}

sf::VertexArray setVertexMatrix(int sizeX, int sizeY)
{
    sf::VertexArray matrix(sf::Points, sizeX * sizeY);

    for(int y = 0; y < sizeY; y++)
        for(int x = 0; x < sizeX; x++)
            matrix[y * sizeY + x].position = sf::Vector2f(x, y);

    return matrix;
}