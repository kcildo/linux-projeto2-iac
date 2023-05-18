#!/bin/bash

echo "Criando estrutura para servidor Apache(web)..."

echo "Atualizando servidor..."
apt-get update
apt-get ugrade -y

echo "Instalando Apache2..."
apt install apache2 -y

echo "iniciando serviço apache..."
systemctl start apache2

echo "instalando unzip..."
apt install unzip -y

echo "baixando site teste para pasta tmp..."
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /

echo "Copiado arquivos para pasta padrão do apache..."
cp -R -v /tmp/linux-site-dio-main/* /var/www/html/

echo "Finalizando!!!"
