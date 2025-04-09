#ifndef APP_H
#define APP_H

#include "SFML/Graphics.hpp"
#include "mandelbrotSet.hpp"

struct PROGRAMM_DATA
{
	sf::RenderWindow& window;
	sf::Clock& 		  fpsClock;
	MANDELBROT_SET    mdSet;
	sf::Vector2i 	  mouseClickPos;
};

int runApp();

#endif