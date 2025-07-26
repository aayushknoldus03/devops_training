DOCKER_COMPOSE := docker compose

build:
ifeq ($(OS),Linux)
	@echo "Building for Linux"
	$(DOCKER_COMPOSE) build
endif
ifeq ($(OS),Darwin)
	@echo "Building for macOS"
	$(DOCKER_COMPOSE) build
endif
ifeq ($(OS),Windows_NT)
	@echo "Building for Windows"
	# Add Windows-specific build commands if you wish :P
endif
up:
	$(DOCKER_COMPOSE) up -d
down:
	$(DOCKER_COMPOSE) down
clean:
	docker rmi practicecape-flask_app


