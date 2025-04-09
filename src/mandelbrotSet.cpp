#include <string.h>
#include <immintrin.h>
#include <math.h>

#include "mandelbrotSet.hpp"

#define PACK_SIZE 2
#define INTRIN_PACK_LOOP(text) for(int i = 0; i < PACK_SIZE; i++) { text }

static const float DEFAULT_SCALE 			= 0.005;
static const int   DEFAULT_CALCULATIONS_CNT = 256;
static const int   MAX_RADIUS 				= 5 * 5;

static const MM MAX_RADIUS_SQUARE_VECTOR = SET_VECTOR_DUP(MAX_RADIUS);

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

void fillColorTable(sf::Color* colorTable, int nCnt)
{
	for(int n = 0; n < nCnt - 1; n++)
		colorTable[n] = sf::Color(n, pow(n, 2), pow(n, 3));

	colorTable[nCnt - 1] = sf::Color::Black;
}

MANDELBROT_SET mandelbrotSetCtor(int matrixSizeX, int matrixSizeY)
{
	sf::VertexArray matrix = setVertexMatrix(matrixSizeX, matrixSizeY);
	sf::Color* colorTable = (sf::Color*)calloc(DEFAULT_CALCULATIONS_CNT, sizeof(sf::Color));
	fillColorTable(colorTable, DEFAULT_CALCULATIONS_CNT);

	MANDELBROT_SET mdSet =
	{
		matrix,
		{(float)matrixSizeX, (float)matrixSizeY},
		{0, 0},
		fillMandelbrotSetIntrinConveer,
		colorTable,
		DEFAULT_SCALE,
		DEFAULT_CALCULATIONS_CNT,
		NOT_SCALABLE,
		DRAWABLE
	};

	return mdSet;
}

void mandelbrotSetDtor(MANDELBROT_SET* mdSet)
{
	//TODO: dodelat
	free(mdSet->colorTable);
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
	MM packX0[PACK_SIZE] = {};

	MM packX[PACK_SIZE]  = {};
	MM packY[PACK_SIZE]  = {};

	MM packSquareX[PACK_SIZE] = {};
	MM packSquareY[PACK_SIZE] = {};

	int masks[PACK_SIZE] = {};

	int nBuf[PACK_SIZE * AVX_VECTOR_SIZE]  = {};

	for(int curY = 0; curY < mdSet->matrixSize.y; curY++)
	{
		MM Y0 = SET_VECTOR_DUP(curY);
		Y0 = ((Y0 - mdSet->matrixSize.y / 2) * mdSet->scale + mdSet->centerPosition.y * (1 - mdSet->scale));

		INTRIN_PACK_LOOP(packY[i] = Y0;)

		for(int curX = 0; curX < mdSet->matrixSize.x - (PACK_SIZE * AVX_VECTOR_SIZE - 1); curX += PACK_SIZE * AVX_VECTOR_SIZE)
		{
			for(int i = 0; i < AVX_VECTOR_SIZE * PACK_SIZE; i++)
				nBuf[i] = 0;

			INTRIN_PACK_LOOP(packX0[i] = (SET_VECTOR_SEQ(curX + i * AVX_VECTOR_SIZE) - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale);)

			INTRIN_PACK_LOOP(packX[i] = packX0[i];)

			INTRIN_PACK_LOOP(packY[i] = Y0;)

			for(int n = 0; n < mdSet->maxCalculationsCnt; n++)
			{
				INTRIN_PACK_LOOP
				(
					packSquareX[i] = MUL_VECTOR(packX[i], packX[i]);
					packSquareY[i] = MUL_VECTOR(packY[i], packY[i]);
				)

				INTRIN_PACK_LOOP
				(
					packY[i] = MUL_VECTOR(packX[i], packY[i]);
					packY[i] = ADD_VECTOR(packY[i], packY[i]);
					packY[i] = ADD_VECTOR(packY[i], Y0);
				)

				INTRIN_PACK_LOOP
				(
					packX[i] = SUB_VECTOR(packSquareX[i], packSquareY[i]);
					packX[i] = ADD_VECTOR(packX[i], packX0[i]);
				)

				INTRIN_PACK_LOOP
				(
					MM cmp   = CMP_VECTOR(MAX_RADIUS_SQUARE_VECTOR, ADD_VECTOR(packSquareX[i], packSquareY[i]), _CMP_GT_OS);
					masks[i] = MOVE_MASK(cmp);
				)

				if(!sumMasks(masks))
					break;

				INTRIN_PACK_LOOP
				(
					int mask = masks[PACK_SIZE - 1 - i];
					for(int j = 0; j < AVX_VECTOR_SIZE; j++)
					{
						nBuf[i * AVX_VECTOR_SIZE + j] += mask & ~(-1 << 1);
						mask >>= 1;
					}
				)
			}

			for(int i = 0; i < AVX_VECTOR_SIZE * PACK_SIZE; i++)
			{
				int n = nBuf[PACK_SIZE * AVX_VECTOR_SIZE - 1 - i] - 1;
				mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = mdSet->colorTable[n];
			}
		}
	}
}

void fillMandelbrotSetIntrin(MANDELBROT_SET* mdSet)
{
	int nBuf[8] = {};

	for(int curY = 0; curY < mdSet->matrixSize.y; curY++)
	{
		MM Y0 = SET_VECTOR_DUP(curY);
		Y0 = ((Y0 - mdSet->matrixSize.y / 2) * mdSet->scale + mdSet->centerPosition.y * (1 - mdSet->scale));

		//TODO: add working with size !%8
		for(int curX = 0; curX < mdSet->matrixSize.x - 7; curX += 8)
		{
			for(int i = 0; i < 8; i++)
				nBuf[i] = 0;

			MM X0 = SET_VECTOR_SEQ(curX);
			X0 = ((X0 - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale));

			MM x_V = X0;
			MM y_V = Y0;

			for(int n = 0; n < mdSet->maxCalculationsCnt; n++)
			{
				MM x2_V = MUL_VECTOR(x_V, x_V);
				MM y2_V = MUL_VECTOR(y_V, y_V);

				MM TMP_X = x_V;
				x_V = ADD_VECTOR(SUB_VECTOR(x2_V, y2_V), X0);

				y_V = MUL_VECTOR(TMP_X, y_V);
				y_V = ADD_VECTOR(ADD_VECTOR(y_V, y_V), Y0);

				MM cmp_V = CMP_VECTOR(MAX_RADIUS_SQUARE_VECTOR, ADD_VECTOR(x2_V, y2_V), _CMP_GT_OS);
				int mask = MOVE_MASK(cmp_V);

				if(!mask) break;

				for(int i = 0; i < 8; i++)
					nBuf[i] += (mask >> i) & ~(-1 << 1);
			}

			for(int i = 0; i < 8; i++)
			{
				int n = nBuf[7-i] - 1;

				mdSet->matrix[curY * mdSet->matrixSize.y + curX + i].color = mdSet->colorTable[n];
			}
		}
	}
}

void fillMandelbrotSetNoOpt(MANDELBROT_SET* mdSet)
{
	for(int curY = 0; curY < mdSet->matrixSize.y; curY++)
	{
		float y0 = (curY - mdSet->matrixSize.y / 2) * mdSet->scale + mdSet->centerPosition.y * (1 - mdSet->scale);

		for(int curX = 0; curX < mdSet->matrixSize.x; curX++)
		{
			float x0 = (curX - mdSet->matrixSize.x / 2) * mdSet->scale + mdSet->centerPosition.x * (1 - mdSet->scale);

			float xN = x0;
			float yN = y0;

			int n = 0;
			for(; n < mdSet->maxCalculationsCnt; n++)
			{
				float x2 = xN * xN;
				float y2 = yN * yN;

				float tmpX = xN;
				xN = x2 - y2 + x0;
				yN = 2 * tmpX * yN + y0;

				if(x2 + y2 >= MAX_RADIUS)
					break;
			}

			mdSet->matrix[curY * mdSet->matrixSize.y + curX].color = mdSet->colorTable[n - 1];
		}
	}
}
