FROM node:10-alpine

USER node

RUN mkdir /home/node/app

COPY *.json *.js /home/node/app/

WORKDIR /home/node/app

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]