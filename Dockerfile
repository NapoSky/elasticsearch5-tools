FROM debian:latest
ENV CEREBRO_VERSION=0.8.5

RUN apt-get update && apt-get -qqy install openjdk-11-jre-headless wget nano gettext-base
RUN mkdir -p /opt/cerebro && cd /opt/cerebro && \
    wget https://github.com/lmenezes/cerebro/releases/download/v$CEREBRO_VERSION/cerebro-$CEREBRO_VERSION.tgz && \
    tar xvf cerebro-$CEREBRO_VERSION.tgz
ADD config /config
ADD start.sh /start.sh
EXPOSE 9000
ENTRYPOINT ["/start.sh"]

