FROM alpine:edge

RUN \
 echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
 apk upgrade --update && \
 apk add --no-cache ca-certificates nodejs mongodb

WORKDIR /app

ADD ./package.json /app/
RUN npm install
ADD . /app

ENV MONGO_SHARD one
ENV MONGO_URL mongodb://dev:chord@localhost:27017/kadira

CMD [ "npm", "run", "start" ]