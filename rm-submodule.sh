#!/usr/bin/env bash

test -n "$DEBUG" && set -x
__debug__=0
ECHO=
[ "$1" = '-n'      ] && { __debug__=1; ECHO=echo;shift; }
[ "$1" = '-d'      ] && { __debug__=1; ECHO=echo;shift; }
[ "$1" = '--debug' ] && { __debug__=1; ECHO=echo;shift; }
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
uri=$(echo $1| sed 's=.*.com/==')
# ----------------------------------------------------------------------------
# Run!
user=${uri%/*}
repo=${uri#*/}
submodule=$repo

# echo 'uri =' $uri
# echo 'user=' $user
# echo 'repo=' $repo

if [[ "$repo" == "$user" ]]; then
  user=$(git config --get github.user)
fi

asubmodule=$submodule
$ECHO git submodule deinit $asubmodule
$ECHO git rm $asubmodule
$ECHO git rm --cached $asubmodule
$ECHO rm -rf .git/modules/$asubmodule
$ECHO git commit -m "Removendo submodulo $asubmodule"
#echo git push
# ----------------------------------------------------------------------------
exit 0
