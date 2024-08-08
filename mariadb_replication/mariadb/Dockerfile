FROM mariadb:11.4.2
LABEL maintainer="TomoProg"
RUN apt-get update && apt-get install -y \
	vim-tiny
ARG config=master
COPY ${config}.cnf /etc/mysql/conf.d/
RUN chmod 644 /etc/mysql/conf.d/${config}.cnf