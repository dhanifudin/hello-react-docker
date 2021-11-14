FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY build/ /usr/share/nginx/html/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
