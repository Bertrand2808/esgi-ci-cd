# Dockerfile
FROM node:19
WORKDIR /app
COPY ./ /app
RUN npm install
LABEL version="Une image avec NPM et Node préconfiguré"