.PHONY: all, clean

GCC    := g++
CFLAGS := -Wshadow -Winit-self -Wredundant-decls -Wcast-align -Wundef -Wfloat-equal -Winline -Wunreachable-code\
	      -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Weffc++ -Wmain -Wextra\
	      -Wall -g -pipe -fexceptions -Wcast-qual -Wconversion -Wctor-dtor-privacy -Wempty-body -Wformat-security\
	      -Wformat=2 -Wignored-qualifiers -Wlogical-op -Wno-missing-field-initializers -Wnon-virtual-dtor\
	      -Woverloaded-virtual -Wpointer-arith -Wsign-promo -Wstack-usage=8192 -Wstrict-aliasing -Wstrict-null-sentinel\
	      -Wtype-limits -Wwrite-strings -Werror=vla -D_DEB
INCLUDE := ../include/
MAIN 	:= main
ODIR    := ../objects/
NAMES   := app mandelbrotSet testMandelbrot commandLineHandler testOptimization
OBJ     := $(patsubst %, %.o, $(NAMES))
TARGET  := ../mandelbrot

all: $(TARGET)

$(TARGET): $(ODIR)main.o $(addprefix $(ODIR), $(OBJ))

	$(GCC) $^ -o $@ -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

$(ODIR)main.o: main.cpp
	$(GCC) -c $(addsuffix .cpp, $(MAIN)) -I $(INCLUDE) -o $(patsubst %, $(ODIR)%.o, $(MAIN))

$(ODIR)%.o: %.cpp $(INCLUDE)%.hpp
	$(GCC) -O2 -mavx2 -c -I $(INCLUDE) $< -o $@

run:
	$(TARGET)

test:
	$(TARGET) --test 100

clean:
	rm $(ODIR)*.o