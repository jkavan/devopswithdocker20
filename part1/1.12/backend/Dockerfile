FROM ubuntu:16.04

EXPOSE 8000

WORKDIR /usr/local/backend

RUN apt-get update -qq && apt-get install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

RUN git clone https://github.com/docker-hy/backend-example-docker .

ENV FRONT_URL=http://127.0.0.1:5000
RUN npm install -y
ENTRYPOINT npm start

