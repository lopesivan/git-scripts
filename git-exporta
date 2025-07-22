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
#      Author: Mr. Ivan
#        Mail: lopesivan.ufrj@gmail.com
#        Site: http://www.42algoritmos.com.br
#     License: gpl
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: expota.sh
#        Date: Qua 03 Out 2018 09:30:24 -03
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
abort()
{
    echo >&2 '
***************
*** ABORTED ***
***************
'
    echo "Bye. Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

# Add your script below....
# If an error occurs, the abort() function will be called.
#----------------------------------------------------------
# ===> Your script goes here
echo `tput bold setb 3` git clone `tput setaf 2` "git://localhost/$(basename $(pwd))"`tput sgr0`

git daemon --export-all --base-path=$(pwd)

# Done!
trap : 0

echo >&2 '
************
*** DONE ***
************
'
# ----------------------------------------------------------------------------
exit 0
