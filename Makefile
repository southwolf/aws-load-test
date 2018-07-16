tag:=$(shell git rev-parse --short HEAD)
repo:=southwolf/aws-load-test
img:=$(repo):$(tag)

build: clean
	GOOS=linux GOARCH=amd64 go build .
	docker build -t $(img) .
	docker tag $(img) $(repo):latest

clean:
	rm -rf ./aws-load-test

push:
	docker push $(img)
	docker push $(repo):latest
