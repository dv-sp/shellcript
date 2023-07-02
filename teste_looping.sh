#!/bin/bash

# Obtém o diretório atual do script
path_atual=$(dirname "$0")

# Arquivo que contém a lista
arquivo="$path_atual/lista"

# Verifica se o arquivo existe e não está vazio
if [ ! -f "$arquivo" ] || [ ! -s "$arquivo" ]; then
    echo "Arquivo não encontrado ou vazio: $arquivo"
    exit 1
fi

# Conta o número inicial de linhas no arquivo
qnt_linhas=$(wc -l < "$arquivo")gi

# Loop para percorrer cada linha
while IFS=$'|' read -r tabela_origem tabela_stage tabela_final; do
    # Coloque aqui o código que você deseja executar com as variáveis
    
    echo "$tabela_origem"
    echo "$tabela_stage"
    echo "$tabela_final"
done < "$arquivo"
