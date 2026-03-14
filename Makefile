.PHONY: up install

up: install
	docker compose up

node_modules: npm_install

npm_install:
	docker compose exec app npm install
