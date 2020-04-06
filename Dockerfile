FROM node:10

WORKDIR /usr/src/app

COPY . .

RUN npm install --only=production

EXPOSE 8080
CMD [ "node", "server.js" ]