all: build

.PHONY: deps clean
clean:
	rm -rf torb

deps:
	export GOPATH=/go; dep ensure

.PHONY: build
build: clean deps
	go build -o torb app.go

.PHONY: status start stop restart
status:
	systemctl status torb.go.service

start:
	systemctl start torb.go.service

stop:
	systemctl stop torb.go.service

restart:
	systemctl restart torb.go.service
