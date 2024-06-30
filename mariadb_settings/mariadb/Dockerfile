FROM mariadb:10.11.6
LABEL maintainer="TomoProg"
RUN apt-get update && apt-get install -y \
	vim-tiny
COPY development.cnf /etc/mysql/conf.d/
RUN chmod 644 /etc/mysql/conf.d/development.cnf
