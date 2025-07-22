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
#        File: ls-repo.sh
#        Date: Seg 30 Abr 2018 23:39:49 -03
# Description:
# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################
# ----------------------------------------------------------------------------
# Run!
run ()
{

local cmd=$(
ssh gitolite.$1 info -p| awk '/ R W/ {print $3}' |
  while read repo; do
    echo git clone gitolite.$1:$repo
  done|sort|
  fzf
)
[[ -n "$cmd" ]] &&
  echo ${cmd}| tee >(xclip -i -selection clipboard)
}
# [[ -n "$cmd" ]] &&
#   echo ${cmd}|
#   tee >(xclip -i -selection clipboard)
#   eval `xclip -selection clipboard -o`
# }

if [ $# -eq 1 ]; then
  run $1
else
  echo USAGE: git ls-gitolite {user}
  echo -n user values:
  find ~/developer/gitolite-admin/keydir/ -type f -name \*.pub  -printf " %f\n"|
    paste -s -d ',' |
      sed 's/\.pub//g'
fi

# ----------------------------------------------------------------------------
exit 0
