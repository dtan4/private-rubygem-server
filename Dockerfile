FROM ruby:2.3.1-alpine

WORKDIR /app
COPY Gemfile /app/
COPY Gemfile.lock /app/
COPY config.ru /app/

RUN bundle install -j4 --without development test

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0"]
