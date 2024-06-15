VERSION := $(shell cat version.txt)
TARGET  := ghcr.io/dellelce/goshell:$(VERSION)
GOIMG   := golang:$(VERSION)-alpine

help:
	@echo no help at the moment

version:
	@echo $(VERSION)

build:
	@docker build -t $(TARGET) .

# login expected to be done by ci
push:
	@docker push $(TARGET)

goshell:
	@[ -d src ] && { cd src && docker run -it --rm -v $$PWD:/src -w /src $(GOIMG) ; } || { docker run -it --rm -v $$PWD:/src -w /src $(GOIMG) ; }

run:
	@docker run -it --rm $(TARGET)

goimg:
	@docker run -it --rm $(GOIMG)
