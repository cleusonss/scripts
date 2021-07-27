#!/bin/bash

# Script de Configuração OpenVPN Client como serviço
# author: Cleuson Santos <cleusonss@gmail.com>

#Instala OpenVPN
debian_interactive=false
apt-get -y update
apt-get -y install --no-install-recommends openvpn

#Cria arquivo de Configuração
mv ./client.conf /etc/openvpn/client.conf
mv ./pass /etc/openvpn/pass
chmod 400 /etc/openvpn/pass

#Habilita Servico
sudo sed 's/#AUTOSTART="all"/AUTOSTART="all"/g' /etc/default/openvpn

#Inicia Servico
service openvpn start