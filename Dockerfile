FROM node:6-alpine

## Install AWS CLI.
RUN \
  mkdir -p /aws && \
  apk -Uuv add groff less python py-pip && \
  pip install awscli && \
  apk --purge -v del py-pip && \
  rm /var/cache/apk/*

## Install Serverless
WORKDIR /app
RUN yarn global add serverless
