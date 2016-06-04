FROM ruby:2.3.1-alpine

RUN apk add --no-cache --update libstdc++

WORKDIR /app
COPY Gemfile /app/
COPY Gemfile.lock /app/

RUN apk add --no-cache --update --virtual=build-deps g++ make \
    && bundle install -j4 --without development test \
    && apk del build-deps

COPY config.ru /app/

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0"]
