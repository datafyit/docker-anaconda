IMAGE_NAME=datafyit/anaconda

all:
	@echo "make build -- build docker image"
	@echo ""
	@echo "make run -- run container"

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -t -i --dns 8.8.8.8 $(IMAGE_NAME)

notebook:
	docker run --rm -t -i --dns 8.8.8.8 -p 8888:8888 -v /home:/notebooks $(IMAGE_NAME) /anaconda/bin/ipython notebook --notebook-dir=/notebooks --no-browser --ip=*
