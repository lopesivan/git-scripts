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
##############################################################################
cleanup ()
{
echo matando ...
kill -s SIGTERM $!
exit 0
}
##############################################################################
trap cleanup SIGINT SIGTERM
##############################################################################

while [ 1 ]
do
    #sleep 6 &
    git an &
    wait $!
done

# ----------------------------------------------------------------------------
exit 0
