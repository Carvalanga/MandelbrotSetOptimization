#include <SFML/Graphics.hpp>
#include <immintrin.h>

#include "mandelbrot.hpp"

const int screenSizeX = 600;
const int screenSizeY = 600;

const int   xPosChangeSpeed  = 4;
const int   yPosChangeSpeed  = 4;
const float scaleChangeSpeed = 0.001;

inline int calcMandelbrot(float x0, float y0)
{
		float xN = x0;
		float yN = y0;
		for(int n = 0; n < maxCntToCalc; n++)
		{
			float x2 = xN * xN;
			float y2 = yN * yN;

			float tmpX = xN;
			xN = x2 - y2 + x0;
			yN = 2 * tmpX * yN + y0;

			if(x2 + y2 >= r2)
			{
				return n;
			}
		}

		return -1;
}

int runApp()
{
	sf::RenderWindow window(sf::VideoMode(screenSizeX, screenSizeY), "Mandelbrot");
    sf::Event event;
    sf::VertexArray buffer(sf::Points, screenSizeX * screenSizeY);

    for(int y = 0; y < screenSizeY; y++)
        for(int x = 0; x < screenSizeX; x++)
            buffer[y * screenSizeY + x].position = sf::Vector2f(x, y);

    float scale = 0.01;
    int xOffset = screenSizeX / 2;
    int yOffset = screenSizeY / 2;

    const __m256 X_OFFSET = _mm256_set_ps(xOffset, xOffset, xOffset, xOffset, xOffset, xOffset, xOffset, xOffset);
    const __m256 Y_OFFSET = _mm256_set_ps(yOffset, yOffset, yOffset, yOffset, yOffset, yOffset, yOffset, yOffset);
    const __m256 SCALE    = _mm256_set_ps(scale, scale, scale, scale, scale, scale, scale, scale);

    while (window.isOpen())
    {
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();

                if (event.key.code == sf::Keyboard::Escape)
                {
                    window.close();
                }

                if(event.key.code == sf::Keyboard::Left)           xOffset+= xPosChangeSpeed;
                if(event.key.code == sf::Keyboard::Right)          xOffset-= xPosChangeSpeed;
                if(event.key.code == sf::Keyboard::Up)             yOffset+= yPosChangeSpeed;
                if(event.key.code == sf::Keyboard::Down)           yOffset-= yPosChangeSpeed;
                if(event.key.code == sf::Keyboard::Z && scale > 0) scale  -= scaleChangeSpeed;
        }

        window.clear();


        for(int curY = 0; curY < screenSizeY - 7; curY += 8)
        {
            __m256 Y0 = _mm256_set_ps(curY, curY + 1, curY + 2, curY + 3, curY + 4, curY + 5, curY + 6, curY + 7);
            Y0 = _mm256_sub_ps(Y_OFFSET, Y0);
            Y0 = _mm256_mul_ps(Y0, SCALE);

            for(int curX = 0; curX < screenSizeX - 7; curX += 8)
            {
                __m256 X0 = _mm256_set_ps(curX, curX + 1, curX + 2, curX + 3, curX + 4, curX + 5, curX + 6, curX + 7);
                X0 = _mm256_sub_ps(X0, X_OFFSET);
                X0 = _mm256_mul_ps(X0, SCALE);

                __m256 X = X0;
                __m256 Y = Y0;
                for(int n = 0; n < n - 7; n += 8)
                {
                    __m256i N = _mm256_set_epi32(n, n + 1, n + 2, n + 3, n + 4, n + 5, n + 6, n + 7);

                    __m256 X2 = _mm256_mul_ps(X, X);
                    __m256 Y2 = _mm256_mul_ps(Y, Y);

                    __m256 TMP_X = X;
                    X = _mm256_sub_ps(X2, Y2);
                    X = _mm256_add_ps(X, X0);

                    Y = _mm256_mul_ps(TMP_X, Y);
                    Y = _mm256_add_ps(Y, Y);
                    Y = _mm256_add_ps(Y, Y0);
                }
            }
        }


        // for(int curY = 0; curY < screenSizeY; curY++)
        // {
        //     float y0 = (yOffset - curY) * scale;

        //     for(int curX = 0; curX < screenSizeX; curX++)
        //     {
        //         float x0 = (curX - xOffset) * scale;
        //         int n = calcMandelbrot(x0, y0);

        //         if(n == -1)
        //             buffer[curY * screenSizeY + curX].color = sf::Color::Black;
        //         else
        //             buffer[curY * screenSizeY + curX].color = sf::Color(0, (n + 128) % 256, n % 256);
        //     }
        // }

        window.draw(buffer);
        window.display();
    }

    return 0;//tmp
}