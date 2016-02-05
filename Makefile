.PHONY: build clean

CONTAINER_NAME = debug
IMAGE_NAME = oyvindio/${CONTAINER_NAME}:latest

build:
	docker build --tag ${IMAGE_NAME} .

clean:
	docker rmi ${IMAGE_NAME}
