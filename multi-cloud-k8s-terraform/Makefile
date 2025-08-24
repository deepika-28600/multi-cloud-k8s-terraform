.PHONY: build run helm-install
IMAGE ?= ghcr.io/your-org/multicloud-app:dev

build:
	docker build -t $(IMAGE) .

run:
	docker run -p 8080:8080 $(IMAGE)

helm-install:
	helm upgrade --install multicloud-app ./helm/myapp -n demo --create-namespace
