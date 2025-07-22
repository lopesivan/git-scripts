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
#        Mail: ivan (at) 42algoritmos (dot) com (dot) br
#        Site: http://www.42algoritmos.com.br
#     License: gpl
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: ls-branch.sh
#        Date: Qui 30 Mar 2017 08:39:13 BRT
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
# git --no-pager log --abbrev-commit --abbrev=7 --pretty=format:'%h %s'
# fbr - checkout git branch
fbr() {
  local ci

  ci=$(git --no-pager log --abbrev-commit --abbrev=7 --pretty=format:'%h %s'| dmenu -i -l 52 -fn 'Droid Sans Mono-31' -nf yellow -nb black -sf black -sb white) &&
  git reset --hard $(echo "$ci" | awk '{print $1}' | sed "s/.* //")
}

fbr
# ----------------------------------------------------------------------------
exit 0
