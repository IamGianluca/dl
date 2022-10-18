format:
	isort . && \
	black -l 79 .

build:
	docker build -t dl .

start:
	nvidia-docker run -d --name fast --ipc=host --gpus all -p 5000:5000 -p 8888:8888 --rm -v "/home/gianluca/git/dl:/workspace" -t dl

attach:
	docker exec -it fast /bin/bash

stop:
	docker kill fast

jupyter:
	jupyter lab --ip 0.0.0.0 --port 8888
