FROM debian:latest
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list.d/jessie-backports.list
RUN apt-get update && apt-get -qqy install openjdk-8-jre-headless wget nano gettext-base
RUN cd /opt && mkdir cerebro && cd cerebro && wget https://github.com/lmenezes/cerebro/releases/download/v0.3.1/cerebro-0.3.1.tgz && tar xvf cerebro-0.3.1.tgz
ADD application.conf.template /opt/cerebro/cerebro-0.3.1/conf/application.conf.template
ADD start.sh /start.sh
EXPOSE 9000
ENTRYPOINT ["/start.sh"]
