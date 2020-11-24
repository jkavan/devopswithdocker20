FROM node:alpine AS build-stage

WORKDIR /app

RUN apk update && apk add git && \
    git clone https://github.com/docker-hy/frontend-example-docker . && \
    apk del git && \
    npm install -y && \
    npm run build

FROM node:alpine

EXPOSE 5000
ENV API_URL=http://127.0.0.1:8000
COPY --from=build-stage /app/dist /app/dist
WORKDIR /app

RUN npm install -g serve && \
    adduser --disabled-password app && \
    chown -R app:app .

USER app

ENTRYPOINT serve -s -l 5000 dist
