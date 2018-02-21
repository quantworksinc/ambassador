.PHONY: build push

build:
	docker build -t quantworks/ambassador:latest .
push:
	docker push quantworks/ambassador:latest
