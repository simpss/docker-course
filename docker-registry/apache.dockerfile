FROM debian:jessie-backports
MAINTAINER Siim <siim@aiotex.com>

RUN apt-get update && apt-get install -y \
    apache2

RUN a2enmod ssl
RUN a2enmod proxy
RUN a2enmod proxy_balancer
RUN a2enmod proxy_http
COPY apache.conf /etc/apache2/sites-available/ssl-registry.conf
RUN ln -s /etc/apache2/sites-available/ssl-registry.conf /etc/apache2/sites-enabled/ssl-registry.conf
RUN rm /etc/apache2/sites-enabled/000-default.conf

#CMD ["apachectl", "-DFOREGROUND", "&&", "tail -f /var/log/apache2/error.log"]
CMD service apache2 start && tail -f /var/log/apache2/error.log
