FROM ruby:3.2.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y default-mysql-client screen cron vim --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV RAILS_ENV production
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle config set --local without 'development test'
RUN bundle config --global frozen 1
RUN bundle install

COPY . /usr/src/app

RUN whenever --update-crontab
RUN cron &

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
