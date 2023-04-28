FROM php:8.1.18-apache
COPY src/index.php /var/www/html/
RUN docker-php-ext-install mysqli pdo_mysql
RUN docker-php-ext-enable mysqli
COPY redlock-db.sql /docker-entrypoint-initdb.d/
ENV MYSQL_HOST=databaseredlock
ENV MYSQL_USER=root
ENV MYSQL_ROOT_PASSWORD=password123
ENV MYSQL_DATABASE=redlock
