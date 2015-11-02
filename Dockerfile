FROM ubuntu:14.04

#RUN apt-get update && apt-get -y install apache2 && apt-get clean
#RUN apt-get -y install curl && apt-get clean
#
#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2
#
#RUN a2enmod ssl
#RUN a2ensite default-ssl
#RUN a2enmod socache_shmcb

RUN apt-get -y install wget curl nano
RUN wget -O /srv/InstallationUbuntuApache.sh https://raw.github.com/photo/frontend/master/documentation/guides/InstallationUbuntuApache.sh
RUN chmod +x /srv/InstallationUbuntuApache.sh
RUN /bin/bash /srv/InstallationUbuntuApache.sh

EXPOSE 80 443


CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
