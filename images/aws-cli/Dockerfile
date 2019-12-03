FROM docker:1.12.6

RUN apk add --update \
    bash \
    python3 \
    curl \
    py-pip && \
    addgroup -g 1000 jenkins && \
    adduser -u 1000 -G jenkins -s /bin/bash -D jenkins && \
    pip3 install --upgrade pip && \
    pip3 install botocore && \
    pip3 install awscli
