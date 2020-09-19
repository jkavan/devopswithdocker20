FROM ruby:2.6.0

EXPOSE 3000

WORKDIR /usr/local/rails-example

RUN apt-get update -qq && apt-get install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

RUN git clone https://github.com/docker-hy/rails-example-project.git .

RUN gem install bundler
RUN bundle install
RUN rails db:migrate
ENTRYPOINT rails s

