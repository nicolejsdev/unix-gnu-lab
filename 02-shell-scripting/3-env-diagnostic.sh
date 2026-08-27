#!/bin/bash
set -euo pipefail

# Validacao de ambiente local para rotinas de automacao
export APP_ENV="production"
USER_LOCALE=$(locale | grep LANG | cut -d= -f2)

echo "--- Informacoes do Sistema ---"
echo "Kernel: $(uname -r)"
echo "Arquitetura: $(uname -m)"
echo "Env: ${APP_ENV}"
echo "Locale: ${USER_LOCALE}"

echo ""
echo "--- Aliases da Sessao ---"
alias ll='ls -la'
alias pgrep='ps aux | grep'
echo "Aliases carregados com sucesso."
