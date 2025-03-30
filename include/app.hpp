#ifndef APP_H
#define APP_H

#include "SFML/Graphics.hpp"

struct MENU
{

};

struct BUTTON
{
	sf::Sprite  sprite;
	sf::Text    text;
};

// BUTTON buttonCtor(sf::Texture& texture, sf::Font& font, const char* buttonText);
// void   setButtonPosition(BUTTON* button, float posX, float posY);
// void   setButtonTextCenter(BUTTON* button);

int runApp();

#endif