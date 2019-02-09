all: build

.PHONY: deps clean
clean:
	rm -rf torb

deps:
	dep ensure

.PHONY: build
build:
	go build -o torb app.go
