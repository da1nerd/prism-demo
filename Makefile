BIN_DIR=bin/samples

all: build

start: directories
	./bin/samples/game

format:
	@crystal tool format ./src

build: directories
	@crystal build src/main.cr -o $(BIN_DIR)/game

release: directories
	@crystal build src/main.cr -o $(BIN_DIR)/game --release

directories:
	@mkdir -p $(BIN_DIR)
	@cp -r src/res $(BIN_DIR)

docs:
	@crystal docs

test:
	@crystal spec

clean:
	@rm -rf bin
	@rm -rf docs
