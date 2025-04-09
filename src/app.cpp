#include <SFML/Graphics.hpp>

#include "app.hpp"
#include "mandelbrotSet.hpp"

const int screenSizeX = 800;
const int screenSizeY = 800;

const float   DX     = 0.1;
const float   DY     = 0.1;
const float   DSCALE   = 0.5;

const int nMax = 256;

static int isMove = 0;

static int   funcSwitchNumber = 0;
static const mdFillFunc FUNTIONS[] =
{
	fillMandelbrotSetNoOpt,
	fillMandelbrotSetIntrin,
	fillMandelbrotSetIntrinConveer
};

void checkInput(PROGRAMM_DATA* data)
{
    sf::Event event;
    while (data->window.pollEvent(event))
    {
        if (event.type == sf::Event::Closed || event.key.code == sf::Keyboard::Escape)
            data->window.close();

        if(event.type == sf::Event::KeyPressed)
        {
            if(event.key.code == sf::Keyboard::Left)  data->mdSet.centerPosition.x -= DX * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Right) data->mdSet.centerPosition.x += DX * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Up)    data->mdSet.centerPosition.y -= DY * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Down)  data->mdSet.centerPosition.y += DY * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Z)     data->mdSet.scale  *= DSCALE;
            if(event.key.code == sf::Keyboard::X)     data->mdSet.scale  /= DSCALE;
            if(event.key.code == sf::Keyboard::Enter) data->mdSet.fillFunc = FUNTIONS[(funcSwitchNumber++) % (sizeof(FUNTIONS) / sizeof(FUNTIONS[0]))];
        }

        if(event.type == sf::Event::MouseWheelScrolled)
        {
            if(event.mouseWheelScroll.delta ==  1)  data->mdSet.scale *= DSCALE;
            if(event.mouseWheelScroll.delta == -1) data->mdSet.scale /= DSCALE;
        }

        if(event.type == sf::Event::MouseButtonPressed)
        {
            if(event.mouseButton.button == sf::Mouse::Left)
                isMove = 1;
        }

        if(event.type == sf::Event::MouseButtonReleased)
        {
            if(event.mouseButton.button == sf::Mouse::Left)
                isMove = 0;
        }
    }
}

void update(PROGRAMM_DATA* data)
{
    float fps = 1.0 / data->fpsClock.restart().asSeconds();
    printf("fps = %lg\n", fps);

    data->mdSet.fillFunc(&data->mdSet);
}

void render(PROGRAMM_DATA* data)
{
    data->window.clear();

    data->window.draw(data->mdSet.matrix);

    data->window.display();
}

int runApp()
{
	sf::RenderWindow window(sf::VideoMode(screenSizeX, screenSizeY), "Mandelbrot");
    MANDELBROT_SET   mdSet = mandelbrotSetCtor(screenSizeX, screenSizeY);
    sf::Clock clock;

    PROGRAMM_DATA data = {window, clock, mdSet};

    while (window.isOpen())
    {
        checkInput(&data);
        update(&data);
        render(&data);
    }

    mandelbrotSetDtor(&mdSet);

    //TODO: add return value
    return 0;
}

