FROM golang:1.17

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    zip \
    xz-utils && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

ENV NVM_DIR /root/.nvm
RUN source $NVM_DIR/nvm.sh && \
    nvm install 16.13.0 && \
    nvm use 16.13.0 && \
    echo "$PATH"
ENV PATH $NVM_DIR/versions/node/v16.13.0/bin:$PATH

RUN wget -q https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz && \
    tar -xf hugo_extended_0.109.0_Linux-64bit.tar.gz -C /usr/local/bin/ hugo && \
    rm -f hugo_extended_0.109.0_Linux-64bit.tar.gz

RUN npm install -g markdownlint-cli@0.33.0 && \
    markdownlint --version && \
    hugo version && \
    node --version && \
    npm --version && \
