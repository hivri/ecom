# Use an official PHP image with Apache
FROM php:8.2-apache

# Install dependencies and mysqli
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    unzip \
    libmariadb-dev \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy all files to working directory
COPY . .

# Expose port 80 (default Apache port)
EXPOSE 80

# Install PostgreSQL extensions
RUN apt-get update && apt-get install -y libpq-dev && \
    docker-php-ext-install pdo_pgsql pgsql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy your PHP files to the container
COPY . /var/www/html/

# Start Apache in the foreground
CMD ["apache2-foreground"]

