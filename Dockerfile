FROM ubuntu:22.04 AS moninet

WORKDIR /moninet

COPY ./moninet.js .

#RUN apk update 
#RUN apk add --update nodejs npm
RUN apt-get update
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN nodejs --version
RUN npm --version
RUN node moninet.js

COPY . .




