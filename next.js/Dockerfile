FROM node

WORKDIR /usr/app

COPY ./package*.json ./
RUN npm install --production

COPY ./ ./
RUN npm build

EXPOSE 7000
USER node

CMD ["npm", "start"]
