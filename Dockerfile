# Usar imagen oficial de PHP 8.2 con Apache
FROM php:8.2-apache

# Instalar extensiones de PHP necesarias para MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilitar módulo de Apache para reescritura de URLs
RUN a2enmod rewrite

# Copiar todos los archivos de la aplicación al directorio web de Apache
COPY . /var/www/html/

# Crear carpeta de uploads si no existe
RUN mkdir -p /var/www/html/img/uploads

# Dar permisos correctos a la aplicación
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \
    && chmod -R 777 /var/www/html/img/uploads

# Configurar Apache para permitir .htaccess
RUN echo '<Directory /var/www/html/> \n\
    Options Indexes FollowSymLinks \n\
    AllowOverride All \n\
    Require all granted \n\
</Directory>' > /etc/apache2/conf-available/docker-php.conf \
    && a2enconf docker-php

# Exponer puerto 80
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["apache2-foreground"]