FROM node:latest

WORKDIR /usr/src/test-cicd

COPY package.json ./
COPY tsconfig.json ./

RUN npm install --global yarn --force
RUN yarn add express
RUN yarn add typescript ts-node nodemon -D
RUN yarn add @types/express @types/node -D

COPY . .

EXPOSE 30000
CMD [ "node", "src/index.js" ]