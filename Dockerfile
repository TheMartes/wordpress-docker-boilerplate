FROM php:7.2-alpine

WORKDIR /usr/share/webapps

RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages phpmyadmin
RUN chmod -R 777 /usr/share/webapps/
RUN mkdir -p /var/www/htdocs/phpmyadmin
RUN ln -s /usr/share/webapps/phpmyadmin/ /var/www/htdocs/phpmyadmin

CMD ['top']
