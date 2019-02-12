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
run: deps
	go run app.go

.PHONY: status start stop restart
status:
	systemctl status torb.go.service

start:
	systemctl start torb.go.service

stop:
	systemctl stop torb.go.service

restart:
	systemctl restart torb.go.service
