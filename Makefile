
TARGET := ghcr.io/dellelce/goshell:1.19
GOIMG  := golang:1.19-alpine

help:
	@echo no help at the moment

build:
	@docker build -t $(TARGET) .

# login expected to be done by ci
push:
	@docker push $(TARGET)

goshell:
	@cd src && docker run -it --rm -v $$PWD:/src -w /src $(GOIMG)

run:
	@docker run -it --rm $(TARGET)
