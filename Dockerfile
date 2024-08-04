# Use a PHP image with Apache pre-installed
FROM php:apache

# Set the working directory
WORKDIR /var/www/html

# Copy your application code
COPY website/* .

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]
