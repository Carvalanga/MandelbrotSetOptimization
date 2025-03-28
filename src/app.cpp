#include <SFML/Graphics.hpp>
#include <immintrin.h>

#include "mandelbrotSet.hpp"

#define DUP8(text) text, text, text, text, text, text, text, text
#define SEQ8(num)  num, num + 1, num + 2, num + 3, num + 4, num + 5, num + 6, num + 7

const int screenSizeX = 800;
const int screenSizeY = 800;

const int   DX     = 10;
const int   DY     = 10;
const float DSCALE = 0.001;

const __m256 __m256_MAX_RADIUS_SQUARE = _mm256_set_ps(DUP8(5 * 5));

const int nMax = 256;

// void printVector(__m256 vector)
// {
//     float buf[8] = {};
//     _mm256_store_ps(buf, vector);

//     for(int i = 0; i < 8; i++)
//     {
//         printf("%lg ", buf[i]);
//     }
//     printf("\n");
// }



int runApp()
{
	sf::RenderWindow window(sf::VideoMode(screenSizeX, screenSizeY), "Mandelbrot");
    sf::Event event;

    MANDELBROT_SET mdSet = mandelbrotSetCtor(screenSizeX, screenSizeY);

    int xOffset = screenSizeX / 2;
    int yOffset = screenSizeY / 2;

    int   nBuf[8] = {};

    window.setFramerateLimit(60);
    sf::Clock clock;

    while (window.isOpen())
    {
        float fps = 1.0 / clock.restart().asSeconds();

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();

                if (event.key.code == sf::Keyboard::Escape)
                    window.close();


                if(event.type == sf::Event::KeyPressed)
                {
                    if(event.key.code == sf::Keyboard::Left)           xOffset+= DX;
                    if(event.key.code == sf::Keyboard::Right)          xOffset-= DX;
                    if(event.key.code == sf::Keyboard::Up)             yOffset+= DY;
                    if(event.key.code == sf::Keyboard::Down)           yOffset-= DY;
                    if(event.key.code == sf::Keyboard::Z && mdSet.scale > 0)
                    {
                        mdSet.scale  -= DSCALE;
                    }
                    if(event.key.code == sf::Keyboard::X) mdSet.scale  += DSCALE;
                }
        }

        window.clear();

        for(int curY = 0; curY < screenSizeY; curY++)
        {
            __m256 Y0 = _mm256_set_ps(DUP8(curY));
            Y0 = ((float)yOffset - Y0) * mdSet.scale;

            for(int curX = 0; curX < screenSizeX - 7; curX += 8)
            {
                for(int i = 0; i < 8; i++)
                        nBuf[i] = 0;

                __m256 X0 = (_mm256_set_ps(SEQ8(curX)) - (float)xOffset) * mdSet.scale;

                __m256 X = X0;
                __m256 Y = Y0;

                for(int n = 0; n < nMax; n++)
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
                    if(nBuf[7-i] == 256)
                        mdSet.matrix[curY * screenSizeY + curX + i].color = sf::Color::Black;
                    else
                        mdSet.matrix[curY * screenSizeY + curX + i].color = sf::Color::White;
                }

            }
        }

        window.draw(mdSet.matrix);
        window.display();
    }

    return 0;
}