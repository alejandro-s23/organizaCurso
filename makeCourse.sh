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
#   v2.1 08/08/2025, Alejandro:
#      - Adicionado parâmetro de debug
#      - Pequenas mudanças de código sem alteração nas funções
#       
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# ------------------------------- VARIÁVEIS ----------------------------------------- #
VERSION="v2.1"
HELP_MSG="
  $(basename $0) - [OPÇÕES]

    -d - Debug da criação das pastas (Se utilizado, deve ser o primeiro parâmetro)
    -h - Menu de Ajuda
    -v - Versão do programa
    -i - Insere uma pasta de Instituto como diretório raiz (Deve ser acompanhado do nome do instituto)
"
COURSE_NAME=""
INST_NAME=""
DEBUGGIN=0
# ------------------------------------------------------------------------ #
# ------------------------------- EXECUÇÃO ----------------------------------------- #

while test -n "$1"
do
# É um comando?
  if [[ "$1" = -* ]]; then
    case "$1" in
      -h) echo "$HELP_MSG" && exit 0                            ;;
      -i) [ $2 ] && INST_NAME="$2/" && shift                    ;;
      -v) echo "$(basename $0) $VERSION" && exit 0              ;;
      -d) DEBUGGIN=1                                            ;;
      *) echo "Opção Inválida, Digite -h para ajuda." && exit 1 ;;
    esac
  else
    COURSE_NAME="$1"
  fi

  shift
done
[[ $DEBUGGIN -eq 1 ]] && set -x
mkdir -p "$INST_NAME$COURSE_NAME"/{PDFs,Resumos,Pratica}
# ------------------------------------------------------------------------ #
