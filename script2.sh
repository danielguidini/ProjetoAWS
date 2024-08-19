#!/bin/bash
echo "Atualizando os pacotes"
sudo yum update -y

echo "Instalando o Apache"
sudo yum install -y httpd

echo "Criando o site estatico"
sudo echo '<h1>Meu Site esta hospedado nos servidores da Amazon Web Services (AWS)</h1><h6>Daniel Guidini</h6>' /var/www/html/index.html

echo "Iniciando e habilitando o Apache"
sudo systemctl start httpd
sudo systemctl enable httpd
