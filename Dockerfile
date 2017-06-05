FROM node:7-alpine

RUN apk add --no-cache git

WORKDIR /app
RUN npm -g install serverless
