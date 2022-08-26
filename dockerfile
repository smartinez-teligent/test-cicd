FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install
RUN yarn install

COPY . .

EXPOSE 30000
CMD [ "node", "src/index.js" ]