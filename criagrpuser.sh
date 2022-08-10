#! /bin/bash

# Projeto Shell Script com objetivo de criar automação na criação de Diretórios, Usuários e Grupos de Usuários com as devidas permissões
# ______________________________________________________________________________________________________________________________________
#
# Versão 1.0
#
# Nome do desenvolvedor: Antonio Augusto Borges
#
###########################################################################
# Mensagem: "Buscar aprender é uma atitude inteligente que se pode fazer" #
#                " Agradeço a todos os que se dispôe a ensinar!"          #
###########################################################################


echo "Script para criação em lote de Grupos, Usuários e conceder permissões determinadas"
echo
sleep 1
echo "Iniciando a criação dos diretórios"
echo
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /fin
echo
sleep 1
echo " Concluído com sucesso"
echo
sleep 1
echo " Iniciando a criação dos grupos de usuários "
echo
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_FIN
echo
sleep 1
echo "Concluído com sucesso "
echo
sleep 1
echo "Criando e vinculando os usuários do Grupo Administrativo"
echo
useradd csoliveira -c "Carlos Santana de Oliveira" -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e csoliveira
useradd mssantana -c "Maria da Silva Santana" -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e mssantana
useradd jcaraujo -c "João César de Araújo" -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e jcaraujo
echo
echo "Criado os usuários para GRP_ADM"
echo
sleep 1
#echo "Criando e vinculando os usuários do Grupo Vendas"
echo
useradd dcmata -c "Débora Cristina da Mata" -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e dcmata
useradd sacarvalho -c "Sebastiana Antônia Carvalho" -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e sacarvalho
useradd rccantao -c "Roberto Carlos Cantão" -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e rccantao
echo
#sleep 1
#echo "Criado os usuários para GRP_VEN"
echo
sleep 1
#echo "Criando e vinculando os usuários do Grupo Financeiro"
echo
useradd jjjose -c "Josefina de Jesus Jose" -G GRP_FIN -m -s /bin/bash -p $(openssl passwd  -crypt Senha123)
passwd -e jjjose
useradd apsilva -c "Amanda Pereira da Silva" -G GRP_FIN -m -s /bin/bash -p $(openssl passwd  -crypt Senha123)
passwd -e apsilva
useradd rgmorais -c "Rogério Gomes de Morais" -G GRP_FIN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd -e rgmorais
echo
#sleep 1
#echo "Criado os usuários para GRP_FIN"
echo
#sleep 1
echo " Especificando as permissões dos diretórios "
echo
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_FIN /fin
echo
chmod 770 /adm
chmod 770 /ven
chmod 770 /fin
chmod 777 /publico
echo
sleep 1
echo "Tarefa executada"
sleep 1
echo "Processo concluido com sucesso"
