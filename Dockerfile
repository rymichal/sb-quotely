FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /docker/app

COPY Gemfile* ./

RUN bundle install

ADD . /docker/app

ARG DEFAULT_PORT 80

EXPOSE ${DEFAULT_PORT}

CMD rails s -b 0.0.0.0