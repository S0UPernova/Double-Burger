FROM ruby:3.0-buster

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    nodejs \
    libqt5webkit5-dev \
    yarn \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists

WORKDIR /app
COPY . /app/

env BUNDLE_PATH /gems
RUN yarn install
RUN bundle install
RUN rails assets:precompile

ENTRYPOINT ["bin/rails"]
cmd ["s", "-b", "0.0.0.0"]

EXPOSE 3000
