FROM node:10.16.0-jessie

RUN apt-get update && apt-get install -y --force-yes \
    awscli \
    --no-install-recommends

## Install Serverless
WORKDIR /app
RUN npm -g install serverless

RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
