FROM node:7-alpine

## Install AWS CLI.
RUN apt-get install awscli

## Install Serverless
WORKDIR /app
RUN npm -g install serverless
