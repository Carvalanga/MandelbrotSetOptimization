.PHONY: all, clean
MODE    := double

GCC    := g++
CFLAGS := -Wshadow -Winit-self -Wredundant-decls -Wcast-align -Wundef -Wfloat-equal -Winline -Wunreachable-code\
	      -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Weffc++ -Wmain -Wextra\
	      -Wall -g -pipe -fexceptions -Wcast-qual -Wconversion -Wctor-dtor-privacy -Wempty-body -Wformat-security\
	      -Wformat=2 -Wignored-qualifiers -Wlogical-op -Wno-missing-field-initializers -Wnon-virtual-dtor\
	      -Woverloaded-virtual -Wpointer-arith -Wsign-promo -Wstack-usage=8192 -Wstrict-aliasing -Wstrict-null-sentinel\
	      -Wtype-limits -Wwrite-strings -Werror=vla -D_DEB
INCLUDE := include/
MAIN 	:= main
SRC 	:= src/
ODIR    := objects/
NAMES   := app mandelbrotSet commandLineHandler testOptimization
OBJ     := $(patsubst %, %.o, $(NAMES))
TARGET  := mandelbrot

ifeq ($(MODE), double)
DBLFLAG := -D DOUBLE
else
DBLFLAG :=
endif

all: $(TARGET)

$(TARGET): $(ODIR)main.o $(addprefix $(ODIR), $(OBJ))
	$(GCC) $^ -o $@ -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

$(ODIR)main.o: src/main.cpp
	$(GCC) -c src/main.cpp -I $(INCLUDE) -o $(ODIR)main.o

$(ODIR)%.o: $(SRC)%.cpp $(INCLUDE)%.hpp
	$(GCC) -O2 -mavx2 -c -I $(INCLUDE) $< -o $@ $(DBLFLAG)

run:
	./$(TARGET)

cleanObj:
	rm $(ODIR)*.o

cleanData:
	rm intrinOpt.txt
	rm noOpt.txt
	rm graph.png
	rm conveerOpt.txt

