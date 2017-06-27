FROM alpine:3.2

RUN \
 apk upgrade --update && \
 apk add --no-cache ca-certificates nodejs

WORKDIR /app

ADD ./package.json /app/
RUN npm install
ADD . /app

ENV PORT 80
ENV MONGO_URL mongodb://dev:chord@localhost:27017/test?replicaSet=rs0

CMD [ "npm", "run", "start" ]
