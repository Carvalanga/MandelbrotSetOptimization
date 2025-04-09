#ifndef MANDELBROT_H
#define MANDELBROT_H

#include "SFML/Graphics.hpp"
#include <immintrin.h>

#define PACK_SIZE 2
#define INTRIN_PACK_LOOP(text) for(int i = 0; i < PACK_SIZE; i++) { text }

#ifdef DOUBLE

	#define AVX_VECTOR_SIZE 4
	#define MM __m256d

	#define SET_VECTOR_DUP(n) _mm256_set_pd(n, n, n, n)
	#define SET_VECTOR_SEQ(n) _mm256_set_pd(n, n + 1, n + 2, n + 3)

	#define ADD_VECTOR(a, b)  _mm256_add_pd(a, b)
	#define SUB_VECTOR(a, b)  _mm256_sub_pd(a, b)
	#define MUL_VECTOR(a, b)  _mm256_mul_pd(a, b)

	#define CMP_VECTOR(a, b, condition) _mm256_cmp_pd(a, b, condition)
	#define MOVE_MASK(vector) _mm256_movemask_pd(vector)

#else //FLOAT

	#define AVX_VECTOR_SIZE 8
	#define MM __m256

	#define SET_VECTOR_DUP(n) _mm256_set_ps(n, n, n, n, n, n, n ,n)
	#define SET_VECTOR_SEQ(n) _mm256_set_ps(n, n + 1, n + 2, n + 3, n + 4, n + 5, n + 6, n + 7)

	#define ADD_VECTOR(a, b)  _mm256_add_ps(a, b)
	#define SUB_VECTOR(a, b)  _mm256_sub_ps(a, b)
	#define MUL_VECTOR(a, b)  _mm256_mul_ps(a, b)

	#define CMP_VECTOR(a, b, condition) _mm256_cmp_ps(a, b, condition)
	#define MOVE_MASK(vector) _mm256_movemask_ps(vector)

#endif

const int DEFAULT_SIZE_X = 800;
const int DEFAULT_SIZE_Y = 800;

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
	void (*fillFunc)(MANDELBROT_SET* mdSet);
	sf::Color*   colorTable;

	float        scale;
	int          maxCalculationsCnt;
	int 	     isScalable;
	int	         isDrawable;
};

struct MD_PACKETS
{
	MM packX0[PACK_SIZE];

	MM packX[PACK_SIZE];
	MM packY[PACK_SIZE];

	MM packSquareX[PACK_SIZE];
	MM packSquareY[PACK_SIZE];

	int masks[PACK_SIZE];
	int nBuf[PACK_SIZE * AVX_VECTOR_SIZE];
};

typedef void (*mdFillFunc)(MANDELBROT_SET* mdSet);

void fillMandelbrotSetIntrinConveer(MANDELBROT_SET* mdSet);
void fillMandelbrotSetIntrin(MANDELBROT_SET* mdSet);
void fillMandelbrotSetNoOpt(MANDELBROT_SET* mdSet);

MANDELBROT_SET mandelbrotSetCtor(int matrixSizeX, int matrixSizeY);
void mandelbrotSetDtor(MANDELBROT_SET* mdSet);
sf::VertexArray setVertexMatrix(int sizeX, int sizeY);

#endif