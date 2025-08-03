#/!bin/bash

if [ -z "$1" ]; then
	echo "Use: $0 \"Nome Curso\""
       exit 1
fi       

#Recebe o parâmetro do nome do curso
curso=$1

echo "Criando os diretórios para o curso $curso na pasta $inst"

mkdir -p "$curso"/{PDFs,Resumos,Pratica}

echo "Diretório de $curso criada com sucesso!"