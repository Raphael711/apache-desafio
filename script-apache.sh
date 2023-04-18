#! bin/bash

echo "Atualizando o sistema..."

apt-get update
apt-get upgrade -y

echo "Baixando o apache e o unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e extraindo a aplicacao..."

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado..."
