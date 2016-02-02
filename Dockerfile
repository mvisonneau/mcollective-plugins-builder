FROM ruby:2.3.0

ADD build.sh /app/build.sh

RUN \
apt-get update; \
apt-get install -y rpm; \
apt-get clean && apt-get autoclean; \
gem install fpm; \
chmod +x /app/build.sh

COPY bin/ /opt/puppetlabs/mcollective/mcollective/

WORKDIR /app

CMD "/app/build.sh"
