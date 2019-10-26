FROM ubuntu:18.04
LABEL maintainer="Luis Dalmolin <luis@kirschbaumdevelopment.com>"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y software-properties-common curl
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update -y
RUN apt-get install -y \
    php7.3-cli \
    php7.3-gd \
    php7.3-json \
    php7.3-ldap \
    php7.3-mbstring \
    php7.3-mysql \
    php7.3-pgsql \
    php7.3-sqlite3 \
    php7.3-xml \
    php7.3-xsl \
    php7.3-zip \
    php7.3-curl \
    php7.3-soap \
    php7.3-gmp \
    php7.3-bcmath \
    composer

# mysql client
RUN apt-get install -y mysql-client

# node and yarn
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn
