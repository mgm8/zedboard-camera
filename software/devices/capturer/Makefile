TARGET=capturer.o
SOURCE=capturer.cpp

ifndef BUILD_DIR
	BUILD_DIR=.
endif

CXX=g++
LIBS=../../
FLAGS=-std=c++11 -I$(LIBS)
OPENCV_FLAGS=`pkg-config --cflags --libs opencv`

all: $(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): $(SOURCE)
	$(CXX) $(OPENCV_FLAGS) $(FLAGS) -c $< -o $@

clean:
	rm $(BUILD_DIR)/$(TARGET)
