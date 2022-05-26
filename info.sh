#!/usr/bin/env bash

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
#        File: mk-update-alternatives.sh
#        Date: Qua 09 Mai 2018 20:27:28 -03
# Description:
# ----------------------------------------------------------------------------
# Modo strict
#set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################

# ----------------------------------------------------------------------------
# Run!
echo `tput bold` `tput rev` Repositório: `tput setaf 3` ` git remote show origin -n | grep "Fetch URL:" | sed 's=.*/=='`  `tput sgr0`
echo `tput bold` `tput rev` Arquivos: `tput setf 1` "Abort!"  `tput sgr0`
echo
# ----------------------------------------------------------------------------
exit 0
