# 3.5

Old size:

    REPOSITORY                 TAG                 IMAGE ID            CREATED             SIZE
    personal-trainer           latest              fb92c146e5b8        2 minutes ago       1.38GB

New size:

    REPOSITORY                 TAG                 IMAGE ID            CREATED             SIZE
    personal-trainer           latest              991dd0c876f3        5 seconds ago       564MB

New Dockerfile:

    FROM node:alpine

    EXPOSE 3000

    WORKDIR /app

    RUN apk update && apk add git && \
        git clone https://github.com/jkavan/personaltrainer.git . && \
        apk del git && \
        npm install -y && \
        adduser --disabled-password app && \
        chown -R app:app .

    USER app

    ENTRYPOINT npm start

Old Dockerfile:

    FROM node:latest

    EXPOSE 3000

    WORKDIR /app

    RUN apt-get update -qq && apt-get install git -y

    RUN git clone https://github.com/jkavan/personaltrainer.git .

    RUN npm install --silent
    RUN npm install react-scripts -g --silent
    ENTRYPOINT npm start

