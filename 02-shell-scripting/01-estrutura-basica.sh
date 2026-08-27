#!/bin/bash

# ==============================================================================
# Script: 01-estrutura-basica.sh
# Descrição: Validação de variáveis de ambiente e checagem de espaço em disco.
# Uso para DevOps: Rotina básica de verificação de sanidade do sistema.
# ==============================================================================

set -euo pipefail

echo "===[ Checagem do Sistema ]==="
echo "Data e Hora: $(date)"
echo "Usuário Executando: $(whoami)"
echo "Hostname: $(hostname)"

echo -e "\n===[ Uso de Disco ]==="
df -h / | awk 'NR==2 {print "Espaço Usado: " $3 " de " $2 " (" $5 ")"}'

echo -e "\nStatus: Verificação concluída com sucesso."
