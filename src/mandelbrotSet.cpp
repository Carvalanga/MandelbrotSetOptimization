#include "mandelbrotSet.hpp"
#include <immintrin.h>

#define DUP8(text) text, text, text, text, text, text, text, text
#define SEQ8(num)  num, num + 1, num + 2, num + 3, num + 4, num + 5, num + 6, num + 7


static const float DEFAULT_SCALE 			= 0.01;
static const int   DEFAULT_CALCULATIONS_CNT = 256;


static const __m256 __m256_MAX_RADIUS_SQUARE = _mm256_set_ps(DUP8(5 * 5));


MANDELBROT_SET mandelbrotSetCtor(int matrixSizeX, int matrixSizeY)
{
	sf::VertexArray matrix = setVertexMatrix(matrixSizeX, matrixSizeY);

	MANDELBROT_SET mdSet =
	{
		matrix,
		{(float)matrixSizeX, (float)matrixSizeY},
		{0, 0},
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

MANDELBROT_SET fillMandelbrotSet(MANDELBROT_SET mdSet)
{
	int nBuf[8] = {};

	for(int curY = 0; curY < mdSet.matrixSize.y; curY++)
	{
		__m256 Y0 = _mm256_set_ps(DUP8(curY));
		Y0 = ((Y0 - mdSet.matrixSize.y / 2) * mdSet.scale + mdSet.centerPosition.y * (1 - mdSet.scale));

		//TODO: add working with size !%8
		for(int curX = 0; curX < mdSet.matrixSize.x - 7; curX += 8)
		{
			for(int i = 0; i < 8; i++)
					nBuf[i] = 0;

			__m256 X0 = (_mm256_set_ps(SEQ8(curX)));
			X0 = ((X0 - mdSet.matrixSize.x / 2) * mdSet.scale + mdSet.centerPosition.x * (1 - mdSet.scale));

			__m256 X = X0;
			__m256 Y = Y0;

			for(int n = 0; n < mdSet.maxCalculationsCnt; n++)
			{
				__m256 X2 = _mm256_mul_ps(X, X);
				__m256 Y2 = _mm256_mul_ps(Y, Y);

				__m256 TMP_X = X;
				X = _mm256_add_ps(_mm256_sub_ps(X2, Y2), X0);

				Y = _mm256_mul_ps(TMP_X, Y);
				Y = _mm256_add_ps(_mm256_add_ps(Y, Y), Y0);

				__m256 CMP = _mm256_cmp_ps(__m256_MAX_RADIUS_SQUARE, _mm256_add_ps(X2, Y2), _CMP_GT_OS);
				int mask = _mm256_movemask_ps(CMP);

				if(!mask) break;

				for(int i = 0; i < 8; i++)
					nBuf[i] += (mask >> i) & ~(-1 << 1);
			}

			for(int i = 0; i < 8; i++)
			{
				int n = nBuf[7-i];

				if(n == 256)
					mdSet.matrix[curY * mdSet.matrixSize.y + curX + i].color = sf::Color::Black;
				else
					mdSet.matrix[curY * mdSet.matrixSize.y + curX + i].color = sf::Color((n+64)^2%255, n, n^3 % 255);
			}

		}
	}

	return mdSet;
}

float testMandelbrotSet(MANDELBROT_SET mdSet, int centreX, int centreY)
{



	return 0;
}