#include <SFML/Graphics.hpp>
#include <immintrin.h>

#include "mandelbrot.hpp"

#define DUP8(text) text, text, text, text, text, text, text, text
#define SEQ8(num)  num, num + 1, num + 2, num + 3, num + 4, num + 5, num + 6, num + 7

const int screenSizeX = 800;
const int screenSizeY = 800;

const int   xPosChangeSpeed  = 10;
const int   yPosChangeSpeed  = 10;
const float scaleChangeSpeed = 0.001;
const int   r2 = 10 * 10;

const int nMax = 256;

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

    const __m256 R2       = _mm256_set_ps(DUP8(r2));
    int   nBuf[8] = {};

    window.setFramerateLimit(60);
    sf::Clock clock;

    while (window.isOpen())
    {
        float time = clock.restart().asSeconds();
        printf("fps = %f", 1.0 / time);

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();

                if (event.key.code == sf::Keyboard::Escape)
                {
                    window.close();
                }

                if(event.type == sf::Event::KeyPressed)
                {
                    if(event.key.code == sf::Keyboard::Left)           xOffset+= xPosChangeSpeed;
                    if(event.key.code == sf::Keyboard::Right)          xOffset-= xPosChangeSpeed;
                    if(event.key.code == sf::Keyboard::Up)             yOffset+= yPosChangeSpeed;
                    if(event.key.code == sf::Keyboard::Down)           yOffset-= yPosChangeSpeed;
                    if(event.key.code == sf::Keyboard::Z && scale > 0)
                    {
                        scale  -= scaleChangeSpeed;
                    }
                    if(event.key.code == sf::Keyboard::X)              scale  += scaleChangeSpeed;
                }
        }

        window.clear();

        for(int curY = 0; curY < screenSizeY; curY++)
        {
            __m256 Y0 = _mm256_set_ps(DUP8(curY));
            Y0 = ((float)yOffset - Y0) * scale;

            for(int curX = 0; curX < screenSizeX - 7; curX += 8)
            {
                for(int i = 0; i < 8; i++)
                        nBuf[i] = 0;

                __m256 X0 = (_mm256_set_ps(SEQ8(curX)) - (float)xOffset) * scale;

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

                    __m256 CMP = _mm256_cmp_ps(R2, _mm256_add_ps(X2, Y2), _CMP_GT_OS);
                    int mask = _mm256_movemask_ps(CMP);

                    if(!mask) break;

                    for(int i = 0; i < 8; i++)
                        nBuf[i] += (mask >> i) & ~(-1 << 1);
                }


                for(int i = 0; i < 8; i++)
                {
                    if(nBuf[7-i] == 256)
                        buffer[curY * screenSizeY + curX + i].color = sf::Color::Black;
                    else
                        buffer[curY * screenSizeY + curX + i].color = sf::Color::White;
                }

            }
        }

        printf("scale = %f\n", scale);

        window.draw(buffer);
        window.display();
    }

    return 0;//tmp
}