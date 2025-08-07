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
#      $ ./makeCourse.sh "Shell Script"
#      Neste exemplo o script criará um diretório com o nome Shell Script,
#      juntamente com as subpastas: "PDFs", "Praticas" e "Resumos";
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 26/07/2025, Alejandro:
#      - Criada a função de criação do diretório *curso* com as subpastas.
#
#   v1.0.1 06/08/2025, Alejandro:
#      - Corrigido erro de variavel inexistente.
#      - Corrigido erro de grafia no cabeçalho.
#
#   v2.0 07/08/2025, Alejandro:
#      - Adicionado Cabeçalho Sólido no código;
#      - Adicionado o parâmetro "-h";
#      - Adicionada a possibilidade de inserir um instituto como diretório raiz;
#       
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# ------------------------------- VARIÁVEIS ----------------------------------------- #
VERSION="v1.1"
HELP_MSG="
  $(basename $0) - [OPÇÕES]
    prompt base - $0 'Nome do Curso

    -h - Menu de Ajuda
    -i - Insere uma pasta de Instituto como diretório raiz (Deve ser acompanhado do nome do instituto)
"
COURSE_NAME=""
INST_NAME=""

# ------------------------------------------------------------------------ #
# ------------------------------- EXECUÇÃO ----------------------------------------- #

while [[ -n "$1" ]]
do
# É um comando?
  if [[ "$1" = -* ]]; then
    case "$1" in
      -h) echo "$HELP_MSG" && exit 0                        ;;
      -i) shift && INST_NAME="$1/"                          ;;
      *) echo "Opção Inválida, Digite -h para ajuda." && exit 1 ;;
    esac
  else
    COURSE_NAME="$1"
  fi
  shift
done

mkdir -p "$INST_NAME$COURSE_NAME"/{PDFs,Resumos,Pratica}

# ------------------------------------------------------------------------ #
