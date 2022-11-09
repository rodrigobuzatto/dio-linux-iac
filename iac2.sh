#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando pacotes apache2 unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando aplicação ..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando aplicação para o diretório padrão do apache..."

cd linux-site-dio-main
cp * -R /var/www/html

echo "Script finalizado!"
