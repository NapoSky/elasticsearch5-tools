#!/bin/bash

# 0 - Required
export VERSION=$CEREBRO_VERSION
export HOSTS="$@"


# 1 - If hosts are not declared, localhost by default

if [ -z "$1" ]; then
  echo "No hosts declared, Using default config"
  cp /config/.default.conf /opt/cerebro/cerebro-$VERSION/conf/application.conf

# 2 - If hosts are declared in arg shell values
else
  for entry in $HOSTS; do
    export host=$entry
    cat /config/.snippet | envsubst >> /config/500_hosts.conf.template
  done
  cat /config/*.conf.template >> /opt/cerebro/cerebro-$VERSION/conf/application.conf

fi

# 3 - Exec cerebro !

exec /opt/cerebro/cerebro-$VERSION/bin/cerebro
