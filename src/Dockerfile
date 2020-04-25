FROM node:12.16.2-alpine3.9

RUN mkdir -p /etc/nookazon-helper
WORKDIR /etc/nookazon-helper

COPY package.json /etc/nookazon-helper
RUN npm install
COPY . /etc/nookazon-helper
CMD ["node", "main.js"]