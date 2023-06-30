##########################################################
#Criação do Script Shell  - Bootcamp Carrefour 
#Data: 30/06/2023
#Objetivo: Treinamento de Script Shell Linux
#Versão 1.0
##########################################################

#!/bin/bash

#set -x

#Criação de diretórios 

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando diretórios"

#Criação dos grupos

groupadd GPR_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando grupos"

#Criação de Usuários

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_ADM
useradd joao_ -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_SEC
useradd amanda m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_SEC
useradd rogerio m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_SEC

echo "Criando Usuários"

#Permissões dos usuários

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"

