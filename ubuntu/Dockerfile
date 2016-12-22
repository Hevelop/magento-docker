FROM ubuntu:16.04

# apache
RUN apt-get update && apt-get install -y apache2
RUN a2enmod rewrite

# php
RUN apt-get install -y python-software-properties software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
RUN apt-get update && apt-get install -y php7.0
RUN apt-get install -y php7.0-xml
RUN apt-get install -y php7.0-gd php7.0-mysql
RUN apt-get install -y php7.0-curl php7.0-mcrypt

EXPOSE 80

COPY docker-entrypoint.sh /usr/local/bin/
# ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["docker-entrypoint.sh"]