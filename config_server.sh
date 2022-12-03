#!/bin/bash

echo "Executando configurações...."

rm -rf /publico
rm -rf /adm
rm -rf /ven
rm -rf /sec

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GPR_SEC

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GPR_SEC

userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao
userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto
userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM
useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN
useradd josefina -m -s /bin/bash -G GPR_SEC
useradd amanda -m -s /bin/bash -G GPR_SEC
useradd rogerio -m -s /bin/bash -G GPR_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GPR_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

