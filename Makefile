TARGET=chess
CXX=g++
CXXFLAGS=-std=c++17 -g -O0 -Wall -I./bin/SFML-2.6.0/include
LDFLAGS=-L./bin/SFML-2.6.0/lib -lsfml-graphics -lsfml-window -lsfml-system -lGL
OBJS=main.o

all: $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET) $(LDFLAGS)
	@rm -f $(OBJS)

main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) main.cpp -o main.o

run:
	LD_LIBRARY_PATH=./bin/SFML-2.6.0/lib ./$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
