ifndef BUILD_DIR
	BUILD_DIR=$(CURDIR)
endif

all:
	$(MAKE) BUILD_DIR=$(BUILD_DIR) -C gpio
	$(MAKE) BUILD_DIR=$(BUILD_DIR) -C i2c
	$(MAKE) BUILD_DIR=$(BUILD_DIR) -C mt9d111
	$(MAKE) BUILD_DIR=$(BUILD_DIR) -C zynqaxi

clean:
	$(MAKE) BUILD_DIR=$(BUILD_DIR) clean -C gpio
	$(MAKE) BUILD_DIR=$(BUILD_DIR) clean -C i2c
	$(MAKE) BUILD_DIR=$(BUILD_DIR) clean -C mt9d111
	$(MAKE) BUILD_DIR=$(BUILD_DIR) clean -C zynqaxi
