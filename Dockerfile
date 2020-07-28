FROM nginx:1.15.0-alpine

ENV INSTALL_PATH /test-deployment
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY ./public_html .

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

COPY env.sh /usr/share/nginx/html
COPY .env /usr/share/nginx/html
RUN chmod +x /usr/share/nginx/html/env.sh
WORKDIR /usr/share/nginx/html

RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]

#FROM node:13-slim

#WORKDIR /app

#ADD . /app

#CMD node server.js
