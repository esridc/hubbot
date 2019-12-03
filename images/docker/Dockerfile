FROM docker:1.12.6

RUN apk update && apk add bash

RUN addgroup -g 1000 jenkins \
    && adduser -u 1000 -G jenkins -s /bin/bash -D jenkins

USER jenkins
