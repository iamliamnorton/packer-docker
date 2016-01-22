IMAGE = $(REGISTRY)/$(PROJECT):$(TAG)

REGISTRY = iamliamnorton
PROJECT = packer-docker
TAG ?= latest

.PHONY: build
build:
	docker build --rm -t $(IMAGE) .

.PHONY: test
test:
	docker run --rm $(IMAGE) packer -v

.PHONY: push
push:
	docker push $(IMAGE)
