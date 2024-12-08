FROM node

LABEL org.opencontainers.image.source=https://github.com/victorposada/node-hello-world

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]