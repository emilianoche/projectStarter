FROM node:alpine

RUN mkdir /usr/app
WORKDIR /usr/app
COPY ./app/package.json package.json
RUN npm install
ADD ./app/webpack.config.js webpack.config.js
