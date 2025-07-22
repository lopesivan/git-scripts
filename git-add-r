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
#        File: a.sh
#        Date: Dom 19 Mar 2017 08:09:51 BRT
# Description:
# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

BOLD=$(tput bold)
RESET=$(tput sgr0)

    CHEKED='\e[1;49;92m[✓]\t\e[0m'
    STAGED='\e[1;49;36mStaged\e[0m'
 UNTRACKED='\e[48;5;160mUntracked\e[0m'
 UNTRACKED='\e[7;41;90mUntracked\e[0m'
UNMODIFIED='\e[1;49;92mUnmodified\e[0m'
  MODIFIED='\e[1;49;33mModified\e[0m'
   DELETED='\e[1;44;36mDeleted from project\e[0m'
   REMOVED='\e[1;39;106mRemoved\e[0m'
        LR='\e[38;5;33mLocal Repository\e[0m'
        WD='\e[1;39;1mWorking directory\e[0m'
# ----------------------------------------------------------------------------
##############################################################################
##############################################################################
##############################################################################

# Run!
for file in $(git status --porcelain | grep '^??' | sed 's/^?? //'); do
  echo File:\`$BOLD${file}$RESET\'
  echo -e $UNTRACKED \> $STAGED
  echo \$ git add $file
  git add $file
done

# ----------------------------------------------------------------------------
exit 0
