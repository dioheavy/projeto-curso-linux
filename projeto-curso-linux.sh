#!/bin/bash

echo 'Criando Diretórios, por favor,  aguarde...'

mkdir /publica
mkdir /adm
mkdir /sec
mkdir /ven

echo 'Criando Grupos de Usuários, por favor, aguarde...'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'Criando Usuários, por favor, aguarde...'

useradd therion -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G GRP_ADM
useradd saxon -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G GRP_ADM
useradd helloween -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G CRP_ADM

useradd manowar -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G GRP_VEN
useradd sanctuary -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G GRP_VEN
useradd metallica -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G CRP_VEN

useradd dio -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G GRP_SEC
useradd accept -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G GRP_SEC
useradd evergrey -m -s /bin/bash -p $(openssl passwd -crypt @1419@) -G CRP_SEC

echo 'Adicionando Permissão aos Diretórios, por favor, aguarde...'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publica

echo 'Concluído com Sucesso!!!'
