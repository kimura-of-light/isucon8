all: build

.PHONY: deps clean
clean:
	rm -rf torb

deps:
	export GOPATH=/go; dep ensure

.PHONY: build
build: clean deps
	go build -o torb app.go
