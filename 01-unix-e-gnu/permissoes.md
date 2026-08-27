# Gerenciamento de Permissões no Linux

Documentação prática sobre a estrutura de permissões POSIX e controle de acesso a arquivos no sistema operacional.

---

## Estrutura de Permissões

Cada arquivo ou diretório possui três níveis de acesso:
* **User (u):** Proprietário do arquivo.
* **Group (g):** Grupo associado ao arquivo.
* **Others (o):** Outros usuários do sistema.

### Notação Simbólica e Numérica

| Tipo | Notação Simbólica | Valor Octal |
| :--- | :--- | :--- |
| Leitura | `r` (read) | `4` |
| Escrita | `w` (write) | `2` |
| Execução | `x` (execute) | `1` |

> **Aviso Importante: Sistema Octal**
> A representação numérica de permissões utiliza o sistema de numeração **octal** (base 8), variando de 0 a 7. Cada permissão possui um peso específico: **Leitura (4)**, **Escrita (2)** e **Execução (1)**. A combinação desses valores através da soma direta define o nível de acesso final.
>
> *Exemplo:* Leitura (4) + Escrita (2) = **6** (Acesso de leitura e escrita, sem execução).

---

## Comandos Principais

* **`chmod`:** Altera as permissões de acesso.
  * *Exemplo octal:* `chmod 755 script.sh` (rwx para usuário, r-x para grupo e outros).
* **`chown`:** Altera o proprietário e o grupo do arquivo.
  * *Exemplo:* `chown usuario:grupo arquivo.txt`
