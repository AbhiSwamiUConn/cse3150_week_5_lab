# Makefile for 2048 game

# Compiler settings
CXX = g++
CXXFLAGS = -std=c++17 -g

# Target executable
TARGET = solution

# Source files
SOURCE = solution.cpp

# Build rule for main executable
$(TARGET): $(SOURCE)
	$(CXX) $(CXXFLAGS) $(SOURCE) -o $(TARGET)

# Clean rule to remove compiled files
.PHONY: clean
clean:
	rm -f $(TARGET)
	rm -f *.o

# Test rule to run pytest
.PHONY: test
test:
	pytest test_game.py

# Default target
all: $(TARGET)

.PHONY: all
