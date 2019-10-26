FROM ruby:2.6
MAINTAINER Stanislav Mekhonoshin <ejabberd@gmail.com>

COPY . /app/
WORKDIR /app
RUN gem install foreman
RUN bundle install

ENTRYPOINT ["/app/entrypoint.sh"]
