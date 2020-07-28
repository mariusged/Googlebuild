FROM nginx:1.15.0-alpine

ENV INSTALL_PATH /test-deployment
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY ./public_html .

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
