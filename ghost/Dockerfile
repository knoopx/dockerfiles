FROM ubuntu:precise
MAINTAINER Víctor Martínez "knoopx@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get -qq update
RUN apt-get install -y sudo wget unzip nodejs

RUN useradd ghost

RUN mkdir -p /app
WORKDIR /app
RUN wget --quiet https://ghost.org/zip/ghost-latest.zip
RUN unzip ghost-latest.zip
RUN rm ghost-latest.zip
RUN npm install --production

ADD config.js /app/config.js
ADD start /app/start

RUN mv content content.example
RUN mkdir content

VOLUME ["/app/content"]
EXPOSE 2368
CMD ["/app/start"]
