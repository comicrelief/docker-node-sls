FROM node:7.2.0-alpine

WORKDIR /app
RUN npm -g install serverless
