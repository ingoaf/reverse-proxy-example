FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf 

RUN apk add curl;



