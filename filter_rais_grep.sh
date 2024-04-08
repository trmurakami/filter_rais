#!/bin/bash

# Verifica se um arquivo foi passado como argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <arquivo.csv>"
    exit 1
fi

# Nome do arquivo de entrada
arquivo_entrada="$1"

# Nome do arquivo de saída
arquivo_saida="output_371210.csv"

# Usa grep para filtrar as linhas com o padrão ;261205; e escreve no arquivo de saída
grep ";371210;" "$arquivo_entrada" >> "$arquivo_saida"

echo "Script concluído. As linhas com o padrão ;371210; foram escritas em $arquivo_saida."