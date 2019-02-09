all: build

.PHONY: deps2 clean
clean:
	rm -rf torb

deps:
	gb vendor restore

deps2:
	GOPATH=`pwd` dep ensure

.PHONY: build
build:
	GOPATH=`pwd`:`pwd`/vendor go build -o torb
