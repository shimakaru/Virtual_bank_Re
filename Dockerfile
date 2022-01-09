FROM node:14-alpine

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .

EXPOSE 3000
CMD ["node","app"]
# CMD [ "node_modules/pm2/bin/pm2", "--no-daemon", "start", "app.js" ]