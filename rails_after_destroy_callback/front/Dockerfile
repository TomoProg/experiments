FROM nginx:1.25.3
LABEL maintainer="TomoProg"
RUN apt-get update -qq && apt-get install -y \
    vim-tiny \
    openssl
ADD config/nginx.conf /etc/nginx/
ADD config/default.conf /etc/nginx/conf.d/
