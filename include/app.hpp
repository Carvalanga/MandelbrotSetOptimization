#ifndef APP_H
#define APP_H

#include "SFML/Graphics.hpp"

struct MENU
{

};

struct BUTTON
{
	sf::Sprite sprite;
	sf::Text   text;
};

BUTTON buttonCtor();

int runApp();

#endif