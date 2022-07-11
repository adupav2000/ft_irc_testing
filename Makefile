SHELL := /bin/bash
all: run open

	
build:
	docker build .
	
run:
	docker run -d $(docker images --format "{{.ID}} {{.CreatedAt}}" | sort -rk 2 | awk 'NR==1{print $1}') 

open:
	docker exec -it $(docker inspect -f "{{.Name}}" $$(docker ps -aq | sed -n 1p)) /bin/bash

