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
set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################

# ----------------------------------------------------------------------------
# Run!

ls_files_branches() {
  local branches branch
  branches=$(git branch -vv ) &&
  branch=$(echo "$branches" | fzf +m) &&
  git ls-tree -r --name-only $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

ls_files_branches

# ----------------------------------------------------------------------------
exit 0
