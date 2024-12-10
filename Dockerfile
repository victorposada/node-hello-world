FROM node

LABEL org.opencontainers.image.source https://github.com/victorposada/node-hello-world


WORKDIR /app
COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]