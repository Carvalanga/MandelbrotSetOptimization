#include <string.h>
#include <immintrin.h>

#include "mandelbrotSet.hpp"

#define DUP8(text) text, text, text, text, text, text, text, text
#define SEQ8(num)  num, num + 1, num + 2, num + 3, num + 4, num + 5, num + 6, num + 7

#define MM __m256

#define PACK_SIZE 2
#define AVX_VECTOR_SIZE 8
#define INTRIN_PACK_LOOP(text) for(int i = 0; i < PACK_SIZE; i++) { text }


static const float DEFAULT_SCALE 			= 0.005;
static const int   DEFAULT_CALCULATIONS_CNT = 256;

__m256 MAX_RADIUS_SQUARE_V = _mm256_set_ps(DUP8(5 * 5));


void printVector(__m256 vector)
{
    float buf[8] = {};
    _mm256_store_ps(buf, vector);

    for(int i = 0; i < 8; i++)
    {
        printf("%lg ", buf[i]);
    }
    printf("\n");
}

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

int sumMasks(int masks[PACK_SIZE])
{
	int res = 0;
	for(int i = 0; i < PACK_SIZE; i++)
		res = res | masks[i];

	return res;
}

void fillMandelbrotSetIntrinConveer(MANDELBROT_SET* mdSet)
{
	__m256 packX0[PACK_SIZE] = {};

	__m256 packX[PACK_SIZE]  = {};
	__m256 packY[PACK_SIZE]  = {};

	__m256 packSquareX[PACK_SIZE] = {};
	__m256 packSquareY[PACK_SIZE] = {};

	int masks[PACK_SIZE] = {};

	int nBuf[PACK_SIZE * AVX_VECTOR_SIZE]  = {};

	for(int curY = 0; curY < mdSet->matrixSize.y; curY++)
	{
		__m256 Y0 = _mm256_set_ps(DUP8(curY));
		Y0 = ((Y0 - mdSet->matrixSize.y / 2) * mdSet->scale + mdSet->centerPosition.y * (1 - mdSet->scale));

		INTRIN_PACK_LOOP(packY[i] = Y0;)

		for(int curX = 0; curX < mdSet->matrixSize.x - (PACK_SIZE * 8 - 1); curX += PACK_SIZE * AVX_VECTOR_SIZE)
		{
			for(int i = 0; i < AVX_VECTOR_SIZE * PACK_SIZE; i++)
				nBuf[i] = 0;

			INTRIN_PACK_LOOP(packX0[i] = (_mm256_set_ps(SEQ8(curX + i * 8)) - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale);)

			INTRIN_PACK_LOOP(packX[i] = packX0[i];)

			INTRIN_PACK_LOOP(packY[i] = Y0;)

			for(int n = 0; n < mdSet->maxCalculationsCnt; n++)
			{
				INTRIN_PACK_LOOP
				(
					packSquareX[i] = _mm256_mul_ps(packX[i], packX[i]);
					packSquareY[i] = _mm256_mul_ps(packY[i], packY[i]);
				)

				INTRIN_PACK_LOOP
				(
					packY[i] = _mm256_mul_ps(packX[i], packY[i]);
					packY[i] = _mm256_add_ps(packY[i], packY[i]);
					packY[i] = _mm256_add_ps(packY[i], Y0);
				)

				INTRIN_PACK_LOOP
				(
					packX[i] = _mm256_sub_ps(packSquareX[i], packSquareY[i]);
					packX[i] = _mm256_add_ps(packX[i], packX0[i]);
				)

				INTRIN_PACK_LOOP
				(
					__m256 cmp = _mm256_cmp_ps(MAX_RADIUS_SQUARE_V, _mm256_add_ps(packSquareX[i], packSquareY[i]), _CMP_GT_OS);
					masks[i]   = _mm256_movemask_ps(cmp);
				)

				if(!sumMasks(masks))
					break;

				//TODO: optimize
				INTRIN_PACK_LOOP
				(
					int mask = masks[PACK_SIZE - 1 - i];
					for(int j = 0; j < 8; j++)
					{
						nBuf[i * 8 + j] += mask & ~(-1 << 1);
						mask >>= 1;
					}
				)

			}

			for(int i = 0; i < AVX_VECTOR_SIZE * PACK_SIZE; i++)
			{
				int n = nBuf[PACK_SIZE * AVX_VECTOR_SIZE - 1 - i];

				if(n == mdSet->maxCalculationsCnt)
					mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = sf::Color::Black;
				else
					mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = sf::Color((n+64)^2%255, n, n^3 % 255);
			}

		}
	}
}

void fillMandelbrotSetIntrin(MANDELBROT_SET* mdSet)
{
	int nBuf[8] = {};

	for(int curY = 0; curY < mdSet->matrixSize.y; curY++)
	{
		__m256 Y0 = _mm256_set_ps(DUP8(curY));
		Y0 = ((Y0 - mdSet->matrixSize.y / 2) * mdSet->scale + mdSet->centerPosition.y * (1 - mdSet->scale));

		//TODO: add working with size !%8
		for(int curX = 0; curX < mdSet->matrixSize.x - 7; curX += 8)
		{
			for(int i = 0; i < 8; i++)
				nBuf[i] = 0;

			__m256 X0 = (_mm256_set_ps(SEQ8(curX)));
			X0 = ((X0 - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale));

			__m256 x_V = X0;
			__m256 y_V = Y0;

			for(int n = 0; n < mdSet->maxCalculationsCnt; n++)
			{
				__m256 x2_V = _mm256_mul_ps(x_V, x_V);
				__m256 y2_V = _mm256_mul_ps(y_V, y_V);

				__m256 TMP_X = x_V;
				x_V = _mm256_add_ps(_mm256_sub_ps(x2_V, y2_V), X0);

				y_V = _mm256_mul_ps(TMP_X, y_V);
				y_V = _mm256_add_ps(_mm256_add_ps(y_V, y_V), Y0);

				__m256 cmp_V = _mm256_cmp_ps(MAX_RADIUS_SQUARE_V, _mm256_add_ps(x2_V, y2_V), _CMP_GT_OS);
				int mask = _mm256_movemask_ps(cmp_V);

				if(!mask) break;

				for(int i = 0; i < 8; i++)
					nBuf[i] += (mask >> i) & ~(-1 << 1);
			}

			for(int i = 0; i < 8; i++)
			{
				int n = nBuf[7-i];

				if(n == mdSet->maxCalculationsCnt)
					mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = sf::Color::Black;
				else
					mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = sf::Color((n+64)^2%255, n, n^3 % 255);
			}
		}
	}

}

