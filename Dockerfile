FROM --platform=linux/amd64 node:22-slim

WORKDIR /usr/src/app

RUN npm install -g npm@11

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

CMD ["node", "dist/main.js"]
