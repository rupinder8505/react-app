FROM ubuntu:latest

RUN apt update 
RUN apt install -y nodejs
RUN apt install -y npm
RUN apt-get install -y curl

WORKDIR /usr/src/app

COPY package*.json ./

COPY index.js ./

CMD [ "node", "index.js" ]
