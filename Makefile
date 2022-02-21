APP := nginx
TAG := local
PORT := 80

up:
	make build run

build:
	docker build -t ${APP}:${TAG} .

run:
	docker run --rm -d --name=${APP} -p ${PORT}:${PORT} ${APP}:${TAG} && open http://localhost:${PORT}

stop:
	docker stop ${APP}

clean:
	docker rmi ${APP}:${TAG}
