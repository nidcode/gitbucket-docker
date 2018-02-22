#!/bin/bash
set -eo pipefail

# if command starts with an option, prepend start
if [ "${1:0:1}" = '-' ]; then
    set -- start "$@"
fi

start() {
    echo "$(ip addr show |grep inet |grep eth0 |awk '{print $2}' |sed 's|/.*||' |tr -d '\n') $(hostname)" >> /etc/hosts
    java -jar /opt/gitbucket.war
}

start
