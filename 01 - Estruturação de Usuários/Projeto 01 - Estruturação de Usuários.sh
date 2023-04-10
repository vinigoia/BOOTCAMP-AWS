#!/bin/bash

echo "Projeto 01 AWS - Criação de Estrutura de Usuários"

#Criar diretórios na pasta raiz

echo "Criando diretórios na pasta raíz..."

mkdir /publico /adm /ven /sec

#Criar Grupos

echo "Criando grupos..."

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

#Criar usuários com pastas home separadas, acesso ao bash, com senha e grupo definidos

echo "Criando usuários..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

#Alterar os grupos das pastas

echo "Alterando os grupos das pastas..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

#Alterar as permissões das pastas

echo "Alterando as permissões das pastas..."

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

