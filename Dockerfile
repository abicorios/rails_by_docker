FROM ruby
RUN apt-get update && apt-get install -y vim
RUN gem install rails
RUN rails new /website
WORKDIR /website
RUN bundle add therubyracer
EXPOSE 3000
CMD ["bin/rails", "s", "-b", "0.0.0.0"]
