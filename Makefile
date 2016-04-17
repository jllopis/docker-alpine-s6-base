DOCKER=docker
REPOSITORY?=jllopis/base-alpine-s6
TAG?=3.3

all:
	@echo "Alpine version: v3.3"
	@echo "s6 version: 1.17.2.0"
	@echo ""
	@echo "Commands:"
	@echo "  make image : build the alpine base image"

image:
	@echo "Building alpine s6 base image"
	${DOCKER} build --no-cache -t ${REPOSITORY}:${TAG} .

