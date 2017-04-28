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
#        File: copies-from-Local-Repository-to-stage.sh
#        Date: Sex 24 Mar 2017 04:00:59 BRT
# Description:
# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################
# exemplo:
#   git up feature
#   git up feature 2

# ----------------------------------------------------------------------------
# Run!
if test $# -eq 0; then
  branch=master
else
  branch=$1
fi

for i in `seq ${2-1}`; do
    git log --reverse --pretty=%H $branch |
    grep -A 1 $(git rev-parse HEAD) |
    tail -n1 |
    xargs git checkout
done

# ----------------------------------------------------------------------------
exit 0
