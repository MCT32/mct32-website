FROM node:18-alpine3.17

WORKDIR /src

COPY package*.json ./
COPY *.config.js ./

RUN npm install

COPY ./src ./src
COPY ./static ./static

RUN npm run build

EXPOSE 3000

CMD [ "node", "build" ]