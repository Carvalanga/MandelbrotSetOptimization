#include <SFML/Graphics.hpp>
#include "mandelbrot.h"

const int screenSizeX = 500;
const int screenSizeY = 500;

const int   xPosChangeSpeed  = 4;
const int   yPosChangeSpeed  = 4;
const float scaleChangeSpeed = 0.001;


const int maxCntToCalc = 256;
const int r2 = 5*5;

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

            for(int curY = 0; curY < screenSizeY; curY++)
            {
                float y0 = (yOffset - curY) * scale;

                for(int curX = 0; curX < screenSizeX; curX++)
                {
                    float x0 = (curX - xOffset) * scale;
                    int n = calcMandelbrot(x0, y0);

                    if(n == -1)
                        buffer[curY * screenSizeY + curX].color = sf::Color::Black;
                    else
                        buffer[curY * screenSizeY + curX].color = sf::Color(0, (n + 128) % 256, n % 256);
                }
            }

            window.draw(buffer);
            window.display();
    }

    return 0;//tmp
}