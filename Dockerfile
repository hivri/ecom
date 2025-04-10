# Use the official PHP image from Docker Hub
FROM php:8.1-cli

# Set working directory
WORKDIR /app

# Copy all the project files to the container
COPY . .

# Install PHP dependencies (optional, like composer)
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Expose the port Render needs
EXPOSE 10000

# Run PHP's built-in server
CMD ["php", "-S", "0.0.0.0:10000"]

RUN apt-get update && apt-get install -y php-mysqli
