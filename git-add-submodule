#!/usr/bin/env bash

__debug__=0
ECHO=
[ "$1" = '-n'      ] && { __debug__=1; ECHO=echo;shift; }
[ "$1" = '-d'      ] && { __debug__=1; ECHO=echo;shift; }
[ "$1" = '--debug' ] && { __debug__=1; ECHO=echo;shift; }

test -n "$DEBUG" && set -x
#                      __ __       ___
#                     /\ \\ \    /'___`\
#                     \ \ \\ \  /\_\ /\ \
#                      \ \ \\ \_\/_/// /__
#                       \ \__ ,__\ // /_\ \
#                        \/_/\_\_//\______/
#                           \/_/  \/_____/
#                                         Algoritimos
#
#
#      Author: Ivan Lopes
#        Mail: ivan@42algoritmos.com.br
#        Site: http://www.42algoritmos.com.br
#     License: gpl
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: add-submodule.sh
#        Date: Dom 30 Abr 2017 13:02:38 BRT
# Description:
# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

if test $# -eq 0; then
  exit 1
fi

##############################################################################
# usage
##############################################################################
# Exemplo 1
# =========
# ./add-submodule.sh https://github.com/nschloe/matlab2tikz
# git submodule add git@github.com:nschloe/matlab2tikz.git
# git commit -m Added matlab2tikz submodule
# git push

# Exemplo 2
# =========
# ./add-submodule.sh nschloe/matlab2tikz
# git submodule add git@github.com:nschloe/matlab2tikz.git
# git commit -m Added matlab2tikz submodule
# git push

##############################################################################
url="${1%.git}".git
#echo url=$url
url_without_suffix="${url%.*}"
reponame="$(basename "${url_without_suffix}")"
#echo Get repository name: $reponame
hostname="$(basename "${url_without_suffix%/${reponame}}")"
#echo "Get user (host) name afterwards:" $hostname


$ECHO git submodule add $url
submodule=$reponame
$ECHO git add .gitmodules $submodule
$ECHO git commit -m "Added $submodule submodule"
$ECHO git submodule init
#echo git push

# ----------------------------------------------------------------------------
exit 0
