.PHONY: build test

IMAGE_NAME=edupo/codenarc

build:
	docker build --tag $(IMAGE_NAME) .

test: build
	docker run --rm -v `pwd`/test:/ws -u `id -u`:`id -g` $(IMAGE_NAME)

login: build
	docker run -ti --rm -v `pwd`/test:/ws -u `id -u`:`id -g` \
	--entrypoint=/bin/bash $(IMAGE_NAME)
