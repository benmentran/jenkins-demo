FROM nginx:alpine

COPY service_a/index.html /usr/share/nginx/html/index.html

RUN apk update && apk add --no-cache \
    curl \
    git \
    ca-certificates
