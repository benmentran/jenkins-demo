FROM nginx:alpine

COPY . .

RUN apk update && apk add --no-cache \
    curl \
    git \
    ca-certificates
