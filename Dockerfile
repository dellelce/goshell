FROM golang:1.19-alpine as source

RUN apk add --no-cache bash vim && \
    ln -sf /usr/bin/vim /usr/bin/vi
