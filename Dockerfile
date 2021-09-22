FROM ruby:3.0.0
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt update
RUN apt --yes upgrade 
RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
    nodejs nano \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN npm install -g yarn@1
WORKDIR /app
COPY Gemfile /app/Gemfile
RUN bundle install
RUN gem install foreman
COPY . /app
EXPOSE 3000