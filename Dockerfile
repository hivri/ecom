
# Use the official PHP image with Apache
FROM php:8.0-apache

# Install PHP extensions that may be needed (if applicable)
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite for clean URLs (if needed)
RUN a2enmod rewrite

# Copy the project files to the Apache server's directory
COPY . /var/www/html/

# Expose port 80 for the app
EXPOSE 80
