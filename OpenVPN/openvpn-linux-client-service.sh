#!/bin/bash

# Script de Configuração OpenVPN Client como serviço
# author: Cleuson Santos <cleusonss@gmail.com>

#Instala OpenVPN
debian_interactive=false
apt-get update
apt-get install -y --no-install-recommended openvpn

#Cria arquivo de Configuração
mv ./client.conf /etc/openvpn/client.conf
mv ./pass /etc/openvpn/pass
chmod 400 /etc/openvpn/pass

#Habilita Servico
echo "AUTOSTART=\"all\"" > /etc/default/openvpn

#Inicia Servico
service openvpn start

