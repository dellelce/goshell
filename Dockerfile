ARG version=1.19.2
ARG source=golang:${version}-alpine
FROM $source as source

RUN apk add --no-cache bash vim git openssh-client && \
    ln -sf /usr/bin/vim /usr/bin/vi
