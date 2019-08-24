.PHONY: run build

build:
	docker build --rm -t prefecthq/prefect docker-prefect/.

run: build
	docker run -tid --name nabprefect prefecthq/prefect
	@echo prefect running

kill:
	@echo "Killing docker-prefect containers"
	docker kill nabprefect
	
remove:
	@echo "Removing docker-prefect containers"
	docker rm nabprefect

tty:
	docker exec -u root -ti nabprefect /bin/bash