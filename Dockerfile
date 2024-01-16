# Dockerfile
FROM node
WORKDIR /app
COPY ./package.json /app/
COPY ./package-lock.json /app/
RUN npm ci
COPY ./index.js /app/
LABEL version="Une image avec NPM et Node préconfiguré"
ENV PATH $PATH:/app/node_modules/jshint/bin