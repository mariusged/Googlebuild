FROM nginx:stable-alpine as production-stage

ENV INSTALL_PATH /test-deployment
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY ./public_html .
CMD node server.js

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]

#FROM node:13-slim

#WORKDIR /app

#ADD . /app

#CMD node server.js
