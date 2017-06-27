#FROM meteorhacks/meteord:base
FROM kadirahq/meteord:base

COPY ./ /app
ENV METEOR_ALLOW_SUPERUSER 1
#RUN meteor npm install --save babel-runtime zeroclipboard histo-utils color-hashcrc ua-parser-js load-script ismobilejs
#RUN meteor npm install --save helmet lru-cache

RUN bash $METEORD_DIR/on_build.sh


