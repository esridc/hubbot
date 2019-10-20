FROM node:8
RUN mkdir /io
WORKDIR /io
ADD . /io
RUN npm install
ENTRYPOINT ./entrypoint.sh
