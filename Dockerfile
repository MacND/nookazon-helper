FROM node:latest-alpine

RUN mkdir -p /etc/nookazon-helper
WORKDIR /etc/nookazon-helper

COPY package.json /etc/nookazon-helper
RUN npm install
COPY . /etc/nookazon-helper
CMD ["node", "index.js"]