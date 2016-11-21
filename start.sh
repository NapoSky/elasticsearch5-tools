#!/bin/bash
export HOST="$1"
cat /opt/cerebro/cerebro-0.3.1/conf/application.conf.template|envsubst > /opt/cerebro/cerebro-0.3.1/conf/application.conf
cat /opt/cerebro/cerebro-0.3.1/conf/application.conf
exec /opt/cerebro/cerebro-0.3.1/bin/cerebro
