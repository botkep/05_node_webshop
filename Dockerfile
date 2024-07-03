FROM node:17.1.0
# FROM node:latest
RUN npm i -g nodemon
WORKDIR /server
COPY package.json package.json
RUN npm install
# ENTRYPOINT [ "node", "./src/index.js" ]
ENTRYPOINT [ "npm", "run", "dev" ]