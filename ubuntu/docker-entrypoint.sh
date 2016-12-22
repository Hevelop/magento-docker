#!/bin/bash

# VHOSTS=../sites-enable/to/*
# for f in $VHOSTS
# do
#   # echo "Processing $f file..."
#   cp $f 
# done

ps auxw | grep apache2 | grep -v grep > /dev/null

if [ $? != 0 ]
then
	/etc/init.d/apache2 restart > /dev/null
fi

while true; do sleep 10000; done
# exec "$@"