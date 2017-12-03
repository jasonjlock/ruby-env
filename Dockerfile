FROM ruby:2.4.2
ADD . /code
WORKDIR /code
RUN bundle install
EXPOSE 8080
CMD ["ruby", "server.rb"]

