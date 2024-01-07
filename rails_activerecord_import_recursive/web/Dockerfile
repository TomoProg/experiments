FROM ruby:2.7.1
LABEL maintainer="TomoProg"

RUN apt-get update -qq && apt-get install -y \
        locales

#####################################################
# timezone, lang settings
RUN ln -sf /usr/share/zoneinfo/Japan /etc/localtime

RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:en
ENV LC_ALL ja_JP.UTF-8

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    postgresql-client \
    vim-tiny

# Rails6からwebpackerが導入され、yarnをinstallする必要がある。
# ただし、何もせずにapt-getでyarnをインストールすると、どうやらインストールされるバージョンとrailsの相性が悪く、railsを起動できない。
# そのため、下記のサイトを参考に安定版で最新のyarnをインストールする。
# https://classic.yarnpkg.com/en/docs/install/#debian-stable
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

RUN mkdir /myapp
WORKDIR /myapp
