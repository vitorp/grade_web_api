FROM ruby:2.5.1-alpine3.7
MAINTAINER Vitor Pontes

RUN apk update && apk add nodejs build-base libxml2-dev libxslt-dev \
    sqlite sqlite-dev sqlite-libs \
    postgresql postgresql-dev postgresql-libs

RUN mkdir /webapp
WORKDIR /webapp
COPY Gemfile /webapp/Gemfile
COPY Gemfile.lock /webapp/Gemfile.lock
RUN bundle install
COPY . /webapp
CMD rails s -p 3000 -b 0.0.0.0
