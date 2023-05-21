FROM alpine:latest AS moninet

WORKDIR /moninet

COPY ./moninet.js .

RUN apk update 
RUN apk add --update nodejs npm
RUN node -v
RUN npm -v
RUN node moninet.js

COPY . .




