FROM node:latest

WORKDIR /usr/src/app

RUN mkdir -p ./resources

COPY resources ./resources
COPY app.js .
COPY package.json .
COPY xs-app.json .

RUN npm install

EXPOSE 8080

CMD ["npm","start"]
