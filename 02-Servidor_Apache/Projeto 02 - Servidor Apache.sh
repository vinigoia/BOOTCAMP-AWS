#!/bin/bash

echo "Criando Servidor Apache..."

echo "Atualizando pacotes..."

apt update -y

echo "Atualizando sistema..."

apt upgrade -y

echo "Instalando o Apache..."

apt install apache2

echo "Instalando o Unzip..."

apt install unzip

echo "Baixando aplicação web..."

wget /tmp/https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Subindo aplicação web..."

echo "Descompactando arquivo..."

cd /tmp

unzip main.zip

echo "Criando pasta do diretório html..."

mkdir /var/www/html/antigo

echo "Movendo arquivo antigo index..."

mv /var/www/html/index.html /var/www/html/antigo

echo "Copiando aplicação para o diretório html..."

cp /tmp/linux-site-dio-main/* /var/www/html -r


