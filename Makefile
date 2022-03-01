IMAGE=zig

build:
	docker build -t $(IMAGE) .

run:
	docker run -it --rm $(IMAGE) bash