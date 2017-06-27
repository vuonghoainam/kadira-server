# TODO use a stable version of alpine linux when
#      the mongodb package becomes available
#
# FROM alpine:3.2
#
# RUN \
#   apk upgrade --update && \
#   apk add --no-cache ca-certificates nodejs mongodb
#

FROM node:4.8.3-alpine

RUN \
 echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
 apk upgrade --update && \
 apk add --no-cache ca-certificates mongodb

WORKDIR /app

ADD ./package.json /app/
RUN npm install
ADD . /app

VOLUME /data/db

ENV MONGO_SHARD one
ENV MONGO_URL mongodb://dev:chord@localhost:27017/kadira

CMD [ "npm", "run", "start" , "mongod"]

