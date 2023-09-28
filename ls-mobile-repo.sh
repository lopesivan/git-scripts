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
#set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################
# ----------------------------------------------------------------------------
# Run!
run ()
{
local cmd=$(
  ssh git.server './ls-clone.sh'|
  while read repo; do
    echo $repo
  done|sort|
  fzf-tmux -l 100% --multi --reverse --query="$1" --select-1 --exit-0
)
[[ -n "$cmd" ]] && ${cmd}
}

if test $# -eq 1; then
  run "$*"
else
  run
fi

# ----------------------------------------------------------------------------
exit 0