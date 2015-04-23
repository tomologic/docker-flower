build:
	docker build --force-rm -t tomologic/$(shell basename $(CURDIR)) .
push:
	docker push tomologic/$(shell basename $(CURDIR))
