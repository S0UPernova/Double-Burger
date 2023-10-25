FROM arm64v8/ruby:3.0.6-slim-bullseye

RUN apt-get update && apt-get install -y gnupg2 build-essential
RUN apt-get update && apt-get install -y gnupg2 build-essential nodejs-doc nodejs npm python python2 libpq-dev
RUN apt-key adv --keyserver pgp.mit.edu --recv D101F7899D41F3C3
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

ADD . /Rails-Docker
WORKDIR /Rails-Docker

RUN bundle install
RUN yarn install
EXPOSE 3000

CMD ["bash"]
