FROM node:10.16.0-jessie

RUN apt-get update && apt-get install -y --force-yes \
    awscli \
    --no-install-recommends

## Install Serverless
WORKDIR /app
RUN npm -g install serverless
