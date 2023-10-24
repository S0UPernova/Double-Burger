FROM arm32v7/ruby:3.0.6-slim-bullseye

RUN chmod +x .
RUN apt-key adv --keyserver pgp.mit.edu --recv D101F7899D41F3C3
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs-doc nodejs npm yarn python python2

ADD . /Rails-Docker
WORKDIR /Rails-Docker

#RUN bundle config set force_ruby_platform true
RUN bundle install
RUN npm install

EXPOSE 3000

CMD ["bash"]
