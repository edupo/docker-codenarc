.PHONY: build test

IMAGE_NAME=edupo/codenarc
TEST_CMD=docker run --rm -v `pwd`/test:/ws -u `id -u`:`id -g` $(IMAGE_NAME)

build:
	docker build --tag $(IMAGE_NAME) .

test.%: build

test:
	$(TEST_CMD) -rulesetfiles=file:all.groovy

test.example:
	$(TEST_CMD) -rulesetfiles=rulesets/imports.xml,rulesets/naming.xml

login: build
	docker run -ti --rm -v `pwd`/test:/ws -u `id -u`:`id -g` \
	--entrypoint=/bin/bash $(IMAGE_NAME)
