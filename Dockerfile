FROM ubuntu:14.04
MAINTAINER demo@example.com

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git vim ruby2.0 ruby2.0-dev
RUN gem2.0 install bundler --no-ri --no-rdoc

ADD . /app/

WORKDIR /app
RUN bundle install

EXPOSE 9292
USER nobody
CMD ["rackup", "config.ru"]

