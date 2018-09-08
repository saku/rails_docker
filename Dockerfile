FROM ruby:2.5.1

RUN apt-get update && apt-get install -y nodejs
WORKDIR /srv/rails
COPY ./Gemfile ./Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["rails", "s"]
