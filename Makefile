UID := $(shell id -u)
GID := $(shell id -g)

.PHONY: up install build

start: build up npm_install

build:
	UID=$(UID) GID=$(GID) docker compose build --build-arg UID=$(UID) --build-arg GID=$(GID)

up:
	docker compose up -d

npm_install:
	docker compose exec app npm install

# npx decap-server
