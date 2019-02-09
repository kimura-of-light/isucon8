all: build

.PHONY: deps2 clean
clean:
	rm -rf torb

deps:
	gb vendor restore

deps2:
	dep ensure

.PHONY: build
build:
	go build -o torb
