FROM postgres:13.1-alpine
ENV LANG ja_JP.utf8

RUN apk update && \
    apk upgrade && \
    apk add --no-cache wget unzip
