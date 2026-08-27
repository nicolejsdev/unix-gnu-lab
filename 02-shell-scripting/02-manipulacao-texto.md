# Manipulação de Texto e Logs

Análise de arquivos de log utilizando utilitários GNU essenciais para troubleshooting em ambientes de produção.

---

## Ferramentas de Processamento

* **`grep`:** Filtragem de linhas baseada em padrões ou expressões regulares.
  * *Exemplo:* `grep -i "error" /var/log/syslog`
* **`awk`:** Processamento e extração de colunas estruturadas.
  * *Exemplo:* `awk '{print $1, $5}' /var/log/auth.log`
* **`sed`:** Edição e substituição de texto em fluxo de dados.
  * *Exemplo:* `sed 's/HTTP/HTTPS/g' arquivo.conf`
