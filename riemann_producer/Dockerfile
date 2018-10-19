FROM ruby:2.5.3

WORKDIR /home/app

COPY Gemfile /home/app
COPY Gemfile.lock /home/app

RUN gem install bundler

RUN bundle install -j4

COPY . /home/app

CMD ["bundle", "exec", "ruby", "lib/riemann_producer.rb"]
