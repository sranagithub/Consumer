FROM node:boron

#Create app directory in the image
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Install app dependencies

COPY package.json /usr/src/app
RUN npm install
 
COPY . /usr/src/app

RUN ["node", "server.js"]

