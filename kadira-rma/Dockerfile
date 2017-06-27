# TODO use a stable version of alpine linux when
#      the mongodb package becomes available
#
#FROM alpine:edge
#FROM anshulguleria/ubuntu-node-mongo:devel
#
# RUN \
#   apk upgrade --update && \
#   apk add --no-cache ca-certificates nodejs mongodb
#

FROM angeloocana/alpine-nodejs-mongodb
#FROM node:4.8.3-alpine
#FROM angeloocana/alpine-nodejs-mongodb

WORKDIR /app
COPY entry.sh /app
ADD ./package.json /app/
RUN npm install
ADD . /app

#VOLUME /data/db

ENV MONGO_SHARD one
ENV MONGO_URL mongodb://dev:chord@localhost:27017/kadira


#ENTRYPOINT [ "/app/entry.sh"]
CMD [ "npm", "run", "start"]

