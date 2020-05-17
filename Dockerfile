FROM ruby:2.6.2

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

# RUN gem install rails bundler
RUN gem install rails -v 5.2.3
#curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
#sudo apt-get install -y nodejs
RUN apt-get update -qq && apt-get install -y nodejs

ENTRYPOINT [ "/bin/bash" ]
