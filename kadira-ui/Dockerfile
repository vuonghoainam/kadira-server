FROM abernix/meteord:base
MAINTAINER MeteorHacks Pvt Ltd.

ONBUILD COPY ./ /app
ENV METEOR_ALLOW_SUPERUSER 1
ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-4.8.0}
ONBUILD ENV NODE_VERSION ${NODE_VERSION:-4.8.0}
#RUN meteor npm install --save babel-runtime zeroclipboard histo-utils color-hashcrc ua-parser-js load-script ismobilejs
#RUN meteor npm install --save helmet lru-cache

#RUN bash $METEORD_DIR/on_build.sh
ONBUILD RUN bash $METEORD_DIR/lib/install_meteor.sh
ONBUILD RUN bash $METEORD_DIR/lib/build_app.sh