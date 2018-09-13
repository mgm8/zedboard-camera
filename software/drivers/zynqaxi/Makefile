TARGET=zynqaxi.o
SOURCE=zynqaxi.cpp

ifndef BUILD_DIR
	BUILD_DIR=.
endif

CXX=g++
LIBS=../../
FLAGS=-std=c++11 -I$(LIBS)

all: $(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): $(SOURCE)
	$(CXX) $(FLAGS) -c $< -o $@

clean:
	rm $(BUILD_DIR)/$(TARGET)
