#!/bin/bash
set -euo pipefail

# Definicao do arquivo de log e saida
LOG_FILE="/var/log/syslog"
OUTPUT_REPORT="report_errors.txt"

# Fallback para distros baseadas em Debian/Ubuntu se o syslog nao existir
if [ ! -f "$LOG_FILE" ]; then
    LOG_FILE="/var/log/dpkg.log"
fi

echo "Analisando log: ${LOG_FILE}"

# Filtra erros, ordena e conta ocorrencias duplicadas
grep -i "error" "$LOG_FILE" | sort | uniq -c | sort -nr > "$OUTPUT_REPORT" 2>&1

echo "Relatorio gerado em: ${OUTPUT_REPORT}"
