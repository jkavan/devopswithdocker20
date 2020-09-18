FROM ubuntu:16.04

RUN apt-get update -qq && apt-get install curl -qqy

COPY curler.sh .
RUN chmod +x curler.sh
CMD [ "./curler.sh" ]

