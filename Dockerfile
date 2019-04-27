ARG PYTAG=3
ARG ALPINETAG=alpine

FROM python:${PYTAG}-${ALPINETAG}
LABEL maintainer="wjc.vonk@gmail.com"

RUN apk upgrade && apk update

# pip, nose
RUN python -m pip install \
--upgrade \
--no-cache-dir \
pip nose

# node, npm
RUN apk add --update nodejs nodejs-npm
RUN npm install -g nodemon

COPY ./entrypoint.sh ./
ENTRYPOINT [ "/bin/sh", "entrypoint.sh" ]
