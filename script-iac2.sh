#!/bin/bash

# Nome do desenvolvedor: Antonio Augusto Borges

#############################################################################
#                                                                           #
# Mensagem: "Buscar aprender é uma atitude inteligente que se pode fazer    #
#           Agradeço a todos os que se dispôe a ensinar!"                   #
#                                                                           #
#############################################################################

# script tem propósito executar a instalação e atualização do servidor WEB

# 1. Executando atualização do Ubuntu Server
echo "Atualizando Ubuntu Server"
apt update
apt upgrade -y
sleep 1
echo
echo 
# 2. Instalando os servidor WEB apache2 e o descompactador de arquivos
echo "Instalando os aplicativos e serviços WEB"
apt install apache2 -y
apt install unzip -y
sleep 1
echo
echo
# 3. Muda de diretório /tmp"
cd /tmp

# 4. Executa o download do pacote compactado do GitHub
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# 5. Descompacta o pacote baixado"
unzip main.zip

# 6. No pacote baixado foi criado o diretório /linux-site-dio-main e em seguida acessa o novo diretório 
cd linux-site-dio-main

# 7. Copia recursivamente todo conteúdo do arquivo baixado e substitui em /var/www/html
cp -R * /var/www/html/

# 8. Modifica uma regra do firewall para permitir acesso
ufw allow 'Apache'
echo 
# 9. Apresenta o IP do servidor WEB para acesso via rede local
echo "Para acessar o servidor WEB via rede local, utilize o IP a seguir:"
sleep 1
hostname -I
echo
echo 
# 10. Apresenta o IP do servidor WEB para acesso externo
echo "Para acesso ao servidor WEB externamente, utilize o IP a seguir:"
curl -4 icanhazip.com
echo
echo
echo "Instalação concluída com sucesso"

