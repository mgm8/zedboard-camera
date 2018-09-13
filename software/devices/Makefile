ifndef BUILD_DIR
	BUILD_DIR=$(CURDIR)
endif

all:
	$(MAKE) BUILD_DIR=$(BUILD_DIR) -C camera
	$(MAKE) BUILD_DIR=$(BUILD_DIR) -C debug

clean:
	$(MAKE) BUILD_DIR=$(BUILD_DIR) clean -C camera
	$(MAKE) BUILD_DIR=$(BUILD_DIR) clean -C debug
