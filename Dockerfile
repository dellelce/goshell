ARG source=golang:1.19.1-alpine
FROM $source as source

RUN apk add --no-cache bash vim git openssh-client && \
    ln -sf /usr/bin/vim /usr/bin/vi
