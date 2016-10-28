#!/bin/bash
export HOST="$1"
cat /opt/cerebro/cerebro-0.2.0/conf/application.conf.template|envsubst > /opt/cerebro/cerebro-0.2.0/conf/application.conf
cat /opt/cerebro/cerebro-0.2.0/conf/application.conf
exec /opt/cerebro/cerebro-0.2.0/bin/cerebro
