tag:=$(shell git rev-parse --short HEAD)
repo:=southwolf/aws-load-test
img:=$(repo):$(tag)

build: clean
	GOOS=linux GOARCH=amd64 go build .
	docker build -t $(img) .

clean:
	rm -rf ./aws-load-test


