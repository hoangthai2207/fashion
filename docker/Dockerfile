FROM ruby:2.7.1

# Information about author
LABEL author.name="HoangThai" \
  author.email="hoangthaidang.2207@gmail.com"

RUN apt-get update && \
    apt-get install -y sqlite3 libsqlite3-dev

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install yarn -y

# Set the timezone.
ENV TZ=Asia/Ho_Chi_Minh

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /Fashion

COPY Gemfile Gemfile.lock ./

RUN bundle install
