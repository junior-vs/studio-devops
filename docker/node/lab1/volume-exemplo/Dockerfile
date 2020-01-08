FROM node:latest
LABEL maintainer="juniorvs/node"
COPY . /var/www
WORKDIR /var/www
RUN npm install
ENTRYPOINT [ "npm", "start" ]
EXPOSE 3000