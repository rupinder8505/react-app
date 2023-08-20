FROM ubuntu:latest

RUN apt update 
RUN apt install nodejs
RUN apt install npm

WORKDIR /usr/src/app

COPY package*.json ./

COPY index.js ./

EXPOSE 8080

CMD [ "node", "index.js" ]
