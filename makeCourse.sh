#!/usr/bin/env bash
#
# makeCourse.sh - Gerenciamento de Pastas para Cursos
#
# Site:       https://www.linkedin.com/in/alejandro-s-santos
# Autor:      Alejandro Souza
# Manutenção: Alejandro Souza
#
# ------------------------------------------------------------------------ #
#  Este programa irá auxiliar os usuários na organização de diretórios dos 
#  seus cursos, aumentando sua produtividade e foco nos estudos.
#
#  Exemplos:
#      $ ./makeCourse.sh.sh "Shell Script"
#      Neste exemplo o script criará um diretório com o nome Shell Script,
#      juntamente com as subpastas: "PDFs", "Praticas" e "Resumos";
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 26/07/2025, Alejandro:
#      - Criada a função de criação do diretório *curso* com as subpastas.
#       
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# ------------------------------- VARIÁVEIS ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

if [ -z "$1" ]; then
	echo "Use: $0 \"Nome Curso\""
       exit 1
fi       

#Recebe o parâmetro do nome do curso
curso=$1

echo "Criando os diretórios para o curso $curso"

mkdir -p "$curso"/{PDFs,Resumos,Pratica}

echo "Diretório de $curso criada com sucesso!"

# ------------------------------------------------------------------------ #
