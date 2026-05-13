FROM node:22-alpine

WORKDIR /app

ENV NODE_ENV=production

COPY package.json ./
RUN yarn install --production --non-interactive

COPY .next ./.next
COPY public ./public
COPY server.js ./server.js

EXPOSE 3000

CMD ["node", "server.js"]
