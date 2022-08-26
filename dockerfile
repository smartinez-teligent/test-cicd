FROM node:latest

WORKDIR /usr/src/test-cicd

COPY . ./

RUN npm install --global yarn --force
RUN yarn add express
RUN yarn add typescript ts-node nodemon -D
RUN yarn add @types/express @types/node -D
RUN yarn build

COPY . .

EXPOSE 30000
CMD [ "node", "dist/index.js" ]