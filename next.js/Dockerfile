FROM node:14

WORKDIR /usr/app

COPY ./package*.json ./
RUN npm install --production

COPY ./ ./
RUN npm run build

EXPOSE 7000
USER node

CMD ["npm", "start"]
