#include <string.h>
#include <immintrin.h>

#include "mandelbrotSet.hpp"

#define DUP8(text) text, text, text, text, text, text, text, text
#define SEQ8(num)  num, num + 1, num + 2, num + 3, num + 4, num + 5, num + 6, num + 7

#define MM __m256

#define PACK_SIZE 2
#define INTRIN_PACK_LOOP(text) for(int i = 0; i < PACK_SIZE; i++) { text }


static const float DEFAULT_SCALE 			= 0.005;
static const int   DEFAULT_CALCULATIONS_CNT = 256;
static const __m256 MAX_RADIUS_SQUARE_V = _mm256_set_ps(DUP8(5 * 5));

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

void setSeqVector(MANDELBROT_SET* mdSet, __m256 packet[PACK_SIZE], int num)
{
	for(int i = 0; i < PACK_SIZE; i++)
	{
		__m256 vector = _mm256_set_ps(SEQ8(num + i * 8));
		vector = ((vector - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale));

		packet[i] = vector;
	}
}

void setDupVector(MANDELBROT_SET* mdSet, __m256 packet[PACK_SIZE], int num)
{
	__m256 vector = _mm256_set_ps(DUP8(num));
	vector = ((vector - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale));

	for(int i = 0; i < PACK_SIZE; i++)
		packet[i] = vector;

}

void packAdd(__m256 packDest[PACK_SIZE], __m256 packSum1[PACK_SIZE], __m256 packSum2[PACK_SIZE])
{
	for(int i = 0; i < PACK_SIZE; i++)
		packDest[i] = _mm256_add_ps(packSum1[i], packSum2[i]);
}

void packSub(__m256 packDest[PACK_SIZE], __m256 packSub1[PACK_SIZE], __m256 packSub2[PACK_SIZE])
{
	for(int i = 0; i < PACK_SIZE; i++)
		packDest[i] = _mm256_sub_ps(packSub1[i], packSub2[i]);
}

void packMul(__m256 packDest[PACK_SIZE], __m256 packMul1[PACK_SIZE], __m256 packMul2[PACK_SIZE])
{
	for(int i = 0; i < PACK_SIZE; i++)
		packDest[i] = _mm256_mul_ps(packMul1[i], packMul2[i]);
}

void calcCmp(__m256 squareX[PACK_SIZE], __m256 squareY[PACK_SIZE], int masks[PACK_SIZE])
{
	packAdd(squareX, squareX, squareY);

	for(int i = 0; i < PACK_SIZE; i++)
	{
		__m256 cmp = _mm256_cmp_ps(MAX_RADIUS_SQUARE_V, squareX[i], _CMP_GT_OS);
		masks[i]   = _mm256_movemask_ps(cmp);
	}
}

int sumMasks(int masks[PACK_SIZE])
{
	int res = 0;
	for(int i = 0; i < PACK_SIZE; i++)
		res = res | masks[i];

	return res;
}

void fillMandelbrotSet(MANDELBROT_SET* mdSet)
{
	__m256 packX0[PACK_SIZE] = {};
	__m256 packY0[PACK_SIZE] = {};

	__m256 packX[PACK_SIZE]  = {};
	__m256 packY[PACK_SIZE]  = {};

	__m256 packSquareX[PACK_SIZE] = {};
	__m256 packSquareY[PACK_SIZE] = {};

	int masks[PACK_SIZE] = {};

	int nBuf[PACK_SIZE * 8]  = {};

	for(int curY = 0; curY < mdSet->matrixSize.y; curY++)
	{
		setDupVector(mdSet, packY, curY);

		//---set yPacket
		__m256 Y0 = _mm256_set_ps(DUP8(curY));
		Y0 = ((Y0 - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale));

		for(int i = 0; i < PACK_SIZE; i++)
			packY[i] = Y0;
		//---

		for(int curX = 0; curX < mdSet->matrixSize.x - PACK_SIZE + 1; curX += PACK_SIZE)
		{

			for(int i = 0; i < 8 * PACK_SIZE; i++)
				nBuf[i] = 0;

			for(int i = 0; i < PACK_SIZE; i++)
				packX0[i] = (_mm256_set_ps(SEQ8(curX + i * 8)) - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale);

			for(int i = 0; i < PACK_SIZE; i++)
				packX[i] = packX0[i];

			for(int n = 0; n < mdSet->maxCalculationsCnt; n++)
			{
				for(int i = 0; i < PACK_SIZE; i++)
				{
					packSquareX[i] = _mm256_mul_ps(packX[i], packX[i]);
					packSquareY[i] = _mm256_mul_ps(packY[i], packY[i]);
				}

				//calc y-es
				for(int i = 0; i < PACK_SIZE; i++)
				{
					packY[i] = _mm256_mul_ps(packX[i], packY[i]);
					packY[i] = _mm256_add_ps(packY[i], packY[i]);
					packY[i] = _mm256_add_ps(packY[i], Y0);
				}

				for(int i = 0; i < PACK_SIZE; i++)
				{
					packX[i] = _mm256_sub_ps(packSquareX[i], packSquareY[i]);
					packX[i] = _mm256_add_ps(packX[i], packX0[i]);
				}

				for(int i = 0; i < PACK_SIZE; i++)
				{
					__m256 cmp = _mm256_cmp_ps(MAX_RADIUS_SQUARE_V, _mm256_add_ps(packSquareX[i], packSquareY[i]), _CMP_GT_OS);
					masks[i]   = _mm256_movemask_ps(cmp);
				}

				if(!sumMasks(masks))
					break;

				for(int i = 0; i < PACK_SIZE; i++)
				{
					nBuf[i] += (masks[i / 8] & 1);
					masks[i / 8] >>= 1;
				}

				printf("n:\n");
				for(int i = 0; i < sizeof(nBuf) / sizeof(nBuf[0]); i++)
				{
					printf("%d ", nBuf[i]);

				}
				printf("\n\n");
			}
			// printf("nbuf size = %d\n", sizeof(nBuf));

			for(int i = 0; i < 8 * PACK_SIZE; i++)
			{
				int n = nBuf[PACK_SIZE * 8 - i];

				if(n == mdSet->maxCalculationsCnt)
					mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = sf::Color::Black;
				else
					mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = sf::Color((n+64)^2%255, n, n^3 % 255);
			}

		}
	}
}
