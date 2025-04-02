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

    int nBuf[8] = {};

    sf::Clock clock;

    MANDELBOT_TEST test = {};
    test.type = NO_TEST;


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
                    if(event.key.code == sf::Keyboard::Left)                 mdSet.centerPosition.x -= DX * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Right)                mdSet.centerPosition.x += DX * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Up)                   mdSet.centerPosition.y -= DY * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Down)                 mdSet.centerPosition.y += DY * mdSet.scale * 100;
                    if(event.key.code == sf::Keyboard::Z && mdSet.scale > 0) mdSet.scale  *= DSCALE;
                    if(event.key.code == sf::Keyboard::X)                    mdSet.scale  /= DSCALE;
                    if(event.key.code == sf::Keyboard::T)                    test.type = START;
                }
        }

        window.clear();

        //TODO: fix zoom
        fillMandelbrotSet(&mdSet);

        window.draw(mdSet.matrix);

        if(test.type != NO_TEST)
            testMandelbrotSet(&mdSet, &test);

        window.display();
    }

    //TODO: add return value
    return 0;
}

// BUTTON buttonCtor(sf::Texture& texture, sf::Font& font, const char* buttonText)
// {
//     BUTTON button = {};
//     button.sprite.setTexture(texture);
//     button.text.setFont(font);
//     button.text.setString(buttonText);
//     setButtonTextCenter(&button);

//     // button.sprite.setTextureRect(texture);
//     return button;
// }

// void setButtonTextCenter(BUTTON* button)
// {
//     sf::Vector2 position = button->sprite.getPosition();
//     sf::Vector2 size     = button->sprite.getTextureRect().getSize();

//     size /= 2;
//     button->text.setPosition(position + sf::Vector2f(size));
// }

// void setButtonPosition(BUTTON* button, float posX, float posY)
// {
//     button->sprite.setPosition(sf::Vector2f(posX, posY));
//     setButtonTextCenter(button);
// }



