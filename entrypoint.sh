#!/bin/sh

echo In ENTRYPOINT, user is: $(id)

exec su - tomcat -c "$*"
