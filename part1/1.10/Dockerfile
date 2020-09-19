FROM ubuntu:16.04

EXPOSE 5000

WORKDIR /usr/local/frontend

RUN apt-get update -qq && apt-get install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

RUN git clone https://github.com/docker-hy/frontend-example-docker .

RUN npm install -y
RUN npm run build
RUN npm install -g serve
ENTRYPOINT serve -s -l 5000 dist

