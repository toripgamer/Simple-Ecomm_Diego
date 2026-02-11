# Usar imagen oficial de PHP 8.2 con Apache
FROM php:8.2-apache

#holi

# Instalar extensiones de PHP necesarias para MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilitar módulo de reescritura de Apache
RUN a2enmod rewrite

# Copiar archivos de la aplicación
COPY . /var/www/html/

# Crear carpeta de uploads
RUN mkdir -p /var/www/html/img/uploads

# Establecer permisos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \
    && chmod -R 777 /var/www/html/img/uploads

# Configurar Apache - CRÍTICO para que procese PHP
RUN echo '<VirtualHost *:80> \n\
    ServerAdmin webmaster@localhost \n\
    DocumentRoot /var/www/html \n\
    <Directory /var/www/html> \n\
        Options Indexes FollowSymLinks MultiViews \n\
        AllowOverride All \n\
        Require all granted \n\
        DirectoryIndex index.php index.html \n\
    </Directory> \n\
    <FilesMatch \.php$> \n\
        SetHandler application/x-httpd-php \n\
    </FilesMatch> \n\
    ErrorLog ${APACHE_LOG_DIR}/error.log \n\
    CustomLog ${APACHE_LOG_DIR}/access.log combined \n\
</VirtualHost>' > /etc/apache2/sites-available/000-default.conf

# Verificar que el módulo PHP está habilitado
RUN php -v

# Exponer puerto 80
EXPOSE 80

# Comando para iniciar Apache
CMD ["apache2-foreground"]