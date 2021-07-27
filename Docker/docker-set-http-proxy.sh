#!/bin/bash

# Script de Configuração de Proxy para o Docker
# author: Cleuson Santos <cleusonss@gmail.com>

# Inicia configuração
mkdir -p /etc/systemd/system/docker.service.d/
touch /etc/systemd/system/docker.service.d/http-proxy.conf
echo "[Service]" >> /etc/systemd/system/docker.service.d/http-proxy.conf
echo "Environment=\"HTTP_PROXY=<fqdn|ip>:<port>\"" > /etc/systemd/system/docker.service.d/http-proxy.conf
echo "Environment=\"NO_PROXY=localhost,127.0.0.1,<local network>\"" > /etc/systemd/system/docker.service.d/http-proxy.conf