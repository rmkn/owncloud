FROM rmkn/php7
MAINTAINER rmkn

RUN yum -y install php70-php-pdo php70-php-pecl-zip php70-php-xml php70-php-gd 
RUN curl -o /tmp/owncloud.tar.bz2 -SL https://download.owncloud.org/community/owncloud-9.1.1.tar.bz2 \
        && tar jxf /tmp/owncloud.tar.bz2 -C /var/www/html/ --strip=1 \
        && chmod 777 /var/www/html \
        && chown -R apache. /var/www/html/*

COPY init.sh /tmp/init.sh
RUN /tmp/init.sh && rm /tmp/init.sh

