FROM node:alpine

EXPOSE 8000

ENV FRONT_URL=http://127.0.0.1:5000

WORKDIR /app

RUN apk update && \
    apk add git && \
    git clone https://github.com/docker-hy/backend-example-docker . && \
    apk  del git && \
    npm install -y

ENTRYPOINT npm start

