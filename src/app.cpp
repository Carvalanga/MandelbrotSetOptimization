#include <SFML/Graphics.hpp>

#include "app.hpp"
#include "mandelbrotSet.hpp"
#include "testMandelbrot.hpp"

const int screenSizeX = 800;
const int screenSizeY = 800;

const float   DX     = 0.1;
const float   DY     = 0.1;
const float DSCALE   = 0.5;


const int nMax = 256;

int runApp()
{
	sf::RenderWindow window(sf::VideoMode(screenSizeX, screenSizeY), "Mandelbrot");
    sf::Event event;

    MANDELBROT_SET mdSet = mandelbrotSetCtor(screenSizeX, screenSizeY);

    int nBuf[8] = {};

    sf::Clock clock;

    MANDELBOT_TEST test = {};
    test.type = NO_TEST;

    bool isMove = 0;

    sf::Vector2i mousePos = {};

    while (window.isOpen())
    {
        float fps = 1.0 / clock.restart().asSeconds();
        printf("fps = %f\n", fps);

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();

                if(event.key.code == sf::Keyboard::Escape)
                    window.close();

                // if(event.type == sf::Event::MouseButtonPressed)
                // {
                //     if(event.mouseButton.button == sf::Mouse::Left)
                //     {
                //         isMove = 1;
                //         mousePos = sf::Mouse::getPosition();
                //     }
                // }

                if(event.type == sf::Event::MouseButtonReleased)
                    if(event.mouseButton.button == sf::Mouse::Left)
                        isMove = 0;


                if(event.type == sf::Event::KeyPressed)
                {
                    if(event.key.code == sf::Keyboard::Left)                 mdSet.centerPosition.x -= DX * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Right)                mdSet.centerPosition.x += DX * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Up)                   mdSet.centerPosition.y -= DY * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Down)                 mdSet.centerPosition.y += DY * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Z && mdSet.scale > 0) mdSet.scale  *= DSCALE;
                    if(event.key.code == sf::Keyboard::X)                    mdSet.scale  /= DSCALE;
                    if(event.key.code == sf::Keyboard::T)                    test.type = START;
                }
        }

        if(isMove)
        {

        }

        window.clear();
        // printf("isMove = %d\n", isMove);
        fillMandelbrotSet(&mdSet);

        window.draw(mdSet.matrix);

        if(test.type != NO_TEST)
            testMandelbrotSet(&mdSet, &test);

        window.display();
    }

    //TODO: add return value
    return 0;
}

