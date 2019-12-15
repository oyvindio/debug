.PHONY: build clean

CONTAINER_NAME = debug
IMAGE_NAME = oyvindio/${CONTAINER_NAME}:latest
ALPINE_IMAGE_NAME = oyvindio/${CONTAINER_NAME}:alpine-latest

all: build build-alpine

build:
	docker-compose -f docker-compose.debian.test.yml build
	docker-compose -f docker-compose.debian.test.yml run --rm sut
build-alpine:
	docker-compose -f docker-compose.alpine.test.yml build
	docker-compose -f docker-compose.alpine.test.yml run --rm sut

clean:
	docker rmi ${IMAGE_NAME} ${ALPINE_IMAGE_NAME}
