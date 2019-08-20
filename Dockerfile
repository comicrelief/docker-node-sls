FROM node:10.16.0-jessie

# AWS CLI needs the PYTHONIOENCODING environment varialbe to handle UTF-8 correctly:
ENV PYTHONIOENCODING=UTF-8

RUN apt-get install -y \
    less \
    man \
    python \
    python-pip \
    python-virtualenv \
    zip

RUN pip install awscli

## Install Serverless
WORKDIR /app
RUN npm -g install serverless

RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
