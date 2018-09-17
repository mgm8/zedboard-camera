TARGET=zedcam

ifndef BUILD_DIR
	BUILD_DIR=build
endif

CXX=g++
FLAGS=-std=c++11
OPENCV_FLAGS=`pkg-config --cflags --libs opencv`

all: $(BUILD_DIR)/main.o
	$(MAKE) BUILD_DIR=$(CURDIR)/$(BUILD_DIR) -C devices
	$(MAKE) BUILD_DIR=$(CURDIR)/$(BUILD_DIR) -C drivers
	$(CXX) $(FLAGS) $(BUILD_DIR)/*.o -o $(BUILD_DIR)/$(TARGET) $(OPENCV_FLAGS)

$(BUILD_DIR)/main.o: main.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(OPENCV_FLAGS) -std=c++11 -I./ -c $< -o $@

clean:
	rm $(BUILD_DIR)/*.o $(BUILD_DIR)/$(TARGET)
