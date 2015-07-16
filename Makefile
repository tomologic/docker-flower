build:
	docker build --force-rm -t tomologic/$(shell basename $(CURDIR)) .
rmi:
	docker rmi tomologic/$(shell basename $(CURDIR))
