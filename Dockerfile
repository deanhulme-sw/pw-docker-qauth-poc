FROM node:18-alpine

WORKDIR /poc-quath-playwright-docker

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npx", "playwright", "test"]