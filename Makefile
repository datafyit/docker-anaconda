IMAGE_NAME=datafyit/anaconda

all:
	@echo "make build -- build docker image"
	@echo ""
	@echo "make run -- run container"

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -t -i --dns 8.8.8.8 $(IMAGE_NAME)
