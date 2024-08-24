CXX = g++
CXXFLAGS = -std=c++17 -Wall -Iinclude
SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)
TARGET = myproject

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^

clean:
	rm -f $(OBJ) $(TARGET)
 
