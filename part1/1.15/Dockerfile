FROM node:latest

EXPOSE 3000

WORKDIR /app

RUN apt-get update -qq && apt-get install git -y

RUN git clone https://github.com/jkavan/personaltrainer.git .

RUN npm install --silent
RUN npm install react-scripts -g --silent
ENTRYPOINT npm start

