#include <SFML/Graphics.hpp>

#include "app.hpp"
#include "mandelbrotSet.hpp"

const int screenSizeX = 1920;
const int screenSizeY = 1072;

const double   DX     = 0.1;
const double   DY     = 0.1;
const double   DSCALE = 0.5;

const int nMax = 256;

static int isMove = 0;
static int   funcSwitchNumber = 0;
static const mdFillFunc TEST_FUNTIONS[] =
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
        if (event.type == sf::Event::Closed)
            data->window.close();

        if(event.type == sf::Event::KeyPressed)
        {
            if(event.key.code == sf::Keyboard::Escape) data->window.close();
            if(event.key.code == sf::Keyboard::Left)  data->mdSet.centerPosition.x -= DX * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Right) data->mdSet.centerPosition.x += DX * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Up)    data->mdSet.centerPosition.y -= DY * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Down)  data->mdSet.centerPosition.y += DY * data->mdSet.scale * 100;
            if(event.key.code == sf::Keyboard::Z)     data->mdSet.scale  *= DSCALE;
            if(event.key.code == sf::Keyboard::X)     data->mdSet.scale  /= DSCALE;
            if(event.key.code == sf::Keyboard::Enter) data->mdSet.fillFunc = TEST_FUNTIONS[(funcSwitchNumber++) % (sizeof(TEST_FUNTIONS) / sizeof(TEST_FUNTIONS[0]))];
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

void runApp()
{
	sf::RenderWindow window(sf::VideoMode(screenSizeX, screenSizeY), "Mandelbrot");
    MANDELBROT_SET   mdSet = mandelbrotSetCtor(screenSizeX, screenSizeY);
    sf::Clock clock;
    PROGRAMM_DATA data = {window, clock, mdSet};

    while (data.window.isOpen())
    {
        checkInput(&data);
        update(&data);
        render(&data);
    }

    mandelbrotSetDtor(&data.mdSet);
}

