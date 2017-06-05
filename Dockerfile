FROM node:7-alpine

## Install AWS CLI.
## Install AWS CLI.
RUN \
  mkdir -p /aws && \
  apk -Uuv add groff less python py-pip && \
  pip install awscli && \
  apk --purge -v del py-pip && \
  rm /var/cache/apk/*

## Install Serverless
WORKDIR /app
RUN npm -g install serverless
