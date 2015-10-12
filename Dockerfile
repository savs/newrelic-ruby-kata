# base on latest ruby base image
FROM ruby:latest

# update and install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# setup app folders
RUN mkdir /myapp
WORKDIR /myapp

# copy over Gemfile and install bundle
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# copy over remaining app files
ADD . /myapp