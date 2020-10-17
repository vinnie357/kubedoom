export CONTAINER_IMAGE=kubedoom

default: build

build:
	docker build --pull --rm  --build-arg ARCH=amd64 -f "Dockerfile.arm" -t ${CONTAINER_IMAGE}-amd:latest .

buildarm:
	docker build --pull --rm  --build-arg ARCH=arm64 -f "Dockerfile.arm" -t ${CONTAINER_IMAGE}-arm:latest .