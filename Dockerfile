# Dockerfile
FROM node:19
WORKDIR /app
COPY ./package.json /app/
COPY ./package-lock.json /app/
RUN npm ci
COPY ./index.js /app/
LABEL version="Une image avec NPM et Node préconfiguré"