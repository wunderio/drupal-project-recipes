# Dockerfile for the Shell container.
FROM wunderio/silta-php-shell:php8.0-v1

COPY --chown=www-data:www-data . /app
