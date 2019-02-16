all: build

.PHONY: deps clean
clean:
	rm -rf torb

deps:
	go get -u github.com/golang/dep/cmd/dep
	export GOPATH=/go; dep ensure

.PHONY: build run
build: clean deps
	go build -o torb app.go
run:
	go get -u github.com/oxequa/realize
	realize start