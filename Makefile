BUILD_DIR = build
EXECUTABLE = CppCommon

all: build

build:
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && cmake ..
	@$(MAKE) -C $(BUILD_DIR)

run: build
	@$(BUILD_DIR)/$(EXECUTABLE)

clean:
	@rm -rf $(BUILD_DIR)

.PHONY: all build run clean
