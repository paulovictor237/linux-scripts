#!/bin/bash

# Instalar o Sail em um projeto existente
composer require laravel/sail --dev
php artisan sail:install

# Ativar o uso de Devcontainer (opcional)
# php artisan sail:install --devcontainer

# Subir os containers com Sail
./vendor/bin/sail up -d

# Criar alias para facilitar o uso do Sail
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

# Rebuild das imagens (quando necessário)
sail down -v
sail build --no-cache
sail up -d

# Executar comandos dentro do ambiente Sail
sail php --version
sail php script.php
sail composer require laravel/sanctum
sail artisan migrate
sail npm run dev
sail yarn

# Testes
sail test
sail test --group=orders

# Acesso ao container
sail shell
sail root-shell
sail tinker

# Compartilhar a aplicação publicamente
sail share
# ou com subdomínio customizado
# sail share --subdomain=meu-projeto

# Debug com Xdebug (requer configuração no .env e rebuild)
sail debug migrate
sail dusk
