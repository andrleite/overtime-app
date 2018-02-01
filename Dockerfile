FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /overtime
WORKDIR /overtime
COPY Gemfile /overtime
COPY Gemfile.lock /overtime
RUN bundle install
COPY . /overtime

