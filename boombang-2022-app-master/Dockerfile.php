# Dockerfile para Laravel + PHP
FROM php:8.1-fpm

# Argumentos de construcción
ARG USER_ID=1000
ARG GROUP_ID=1000

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libzip-dev \
    netcat-traditional \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Instalar Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Crear usuario para evitar problemas de permisos
RUN groupadd -g ${GROUP_ID} boombang && \
    useradd -u ${USER_ID} -g boombang -m boombang

# Directorio de trabajo
WORKDIR /var/www

# Cambiar propietario
RUN chown -R boombang:boombang /var/www

# Usar usuario no-root
USER boombang

# Exponer puerto
EXPOSE 8000

# Script de inicio
COPY docker-entrypoint.sh /usr/local/bin/
USER root
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
USER boombang

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
