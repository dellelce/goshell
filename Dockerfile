ARG version=1.22.4
ARG source=golang:${version}-alpine
FROM $source as source

RUN apk add --no-cache bash neovim git openssh-client && \
    ln -sf /usr/bin/nvim /usr/bin/vi && \
    ln -sf /usr/bin/nvim /usr/bin/vim
