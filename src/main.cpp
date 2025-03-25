#include <SFML/Graphics.hpp>
#include <math.h>

const int screenSizeX = 500;
const int screenSizeY = 500;

const int r2 = 5*5;
const int maxCntToCalc = 256;

int main()
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

                if(event.key.code == sf::Keyboard::Left)  xOffset++;
                if(event.key.code == sf::Keyboard::Right) xOffset--;
                if(event.key.code == sf::Keyboard::Up)    yOffset++;
                if(event.key.code == sf::Keyboard::Down)  yOffset--;
                if(event.key.code == sf::Keyboard::Z)     scale -= 0.0001;

                if(event.key.code == sf::Keyboard::B)
                    scale -= 0.01;

        }

            window.clear();
            for(int yi = 0; yi < screenSizeY; yi++)
            {
                float y0 = (yOffset - yi) * scale;

                for(int xi = 0; xi < screenSizeX; xi++)
                {
                    int n = 0;
                    float x0 = (xi - xOffset) * scale;

                    float x1 = x0;
                    float y1 = y0;

                    for(; n < maxCntToCalc; n++)
                    {
                        float x2 = x1 * x1;
                        float y2 = y1 * y1;

                        float xRes = x2 - y2 + x0;
                        float yRes = 2 * x1 * y1 + y0;

                        y1 = yRes;
                        x1 = xRes;

                        if(x2 + y2 >= r2)
                        {
                            buffer[yi * screenSizeY + xi].color = sf::Color::Black;
                            break;
                        }
                    }
                    if(n == maxCntToCalc)
                        buffer[yi * screenSizeY + xi].color = sf::Color::White;

                }
            }

            window.draw(buffer);
            printf("scale = %lg\n", scale);
            window.display();
    }
}