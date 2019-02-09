all: build

.PHONY: deps2 clean
clean:
	rm -rf torb

deps:
	gb vendor restore

deps2:
	export GOPATH=`pwd` dep ensure

.PHONY: build
build:
	GOPATH=`pwd`:`pwd`/vendor go build -v torb
