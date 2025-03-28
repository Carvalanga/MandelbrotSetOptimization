#include <SFML/Graphics.hpp>

#include "app.hpp"
#include "mandelbrotSet.hpp"


const int screenSizeX = 800;
const int screenSizeY = 800;

const float   DX     = 10;
const float   DY     = 10;
const float DSCALE   = 0.8;


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

    int centreX = (screenSizeX / 2);
    int centreY = (screenSizeY / 2);

    window.setFramerateLimit(60);
    sf::Clock clock;

    while (window.isOpen())
    {
        float fps = 1.0 / clock.restart().asSeconds();
        printf("fps = %f\n", fps);

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();

                if (event.key.code == sf::Keyboard::Escape)
                    window.close();

                if(event.type == sf::Event::KeyPressed)
                {
                    if(event.key.code == sf::Keyboard::Left)           centreX+= DX;
                    if(event.key.code == sf::Keyboard::Right)          centreX-= DX;
                    if(event.key.code == sf::Keyboard::Up)             centreY+= DY;
                    if(event.key.code == sf::Keyboard::Down)           centreY-= DY;
                    if(event.key.code == sf::Keyboard::Z && mdSet.scale > 0)
                        mdSet.scale  *= DSCALE;
                    if(event.key.code == sf::Keyboard::X) mdSet.scale  /= DSCALE;
                }
        }

        window.clear();

        //TODO: fix zoom
        mdSet = fillMandelbrotSet(mdSet, centreX * mdSet.scale, centreY * mdSet.scale);

        window.draw(mdSet.matrix);
        window.display();
    }

    //TODO: add return value
    return 0;
}

BUTTON buttonCtor(sf::Texture texture, const char* buttonText)
{
    BUTTON button = {};
    // button.sprite.setTextureRect(texture);
}

void setButtonPosition(BUTTON* button, float posX, float posY)
{
    button->sprite.setPosition(sf::Vector2f(posX, posY));
    //TODO: add link with text
}



