FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./
COPY tsconfig.json ./

RUN npm install --global yarn --force
RUN yarn install

COPY . .

EXPOSE 30000
CMD [ "node", "src/index.js" ]