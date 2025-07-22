#!/usr/bin/env bash

## Usando web
URL=https://www.toptal.com/developers/gitignore
API=$URL/api
DROPDOWN=${URL}/dropdown/templates.json

## Usando servidor ivan
# URL=192.168.2.43
# PORT=3097
# API=$URL:$PORT/api
# DROPDOWN=${URL}:${PORT}/dropdown/templates.json

CURL=curl

run() {

    local debug=OFF

    if [ "$1" == "-d" ]; then
        debug=ON; shift
    fi

    if [ "$1" == "-h" ]; then
        cat << EOF
Uso:
git ignore
git ignore -L
git ignore -l
git ignore -t
git ignore list
git ignore -s
EOF

exit 2
    fi

    o=$1
    case $o in

        "-L")
            shift

            if [ "$debug" == "ON" ]; then
                echo ${CURL} ${API}/list?format=lines
            else
                ${CURL} ${API}/list?format=lines
            fi
            ;;

        "-l")
            shift

            if [ "$debug" == "ON" ]; then
                echo ${CURL} -L -s ${API}/list
            else
                ${CURL} -L -s ${API}/list
            fi
            ;;

        "-t")
            if [ "$debug" == "ON" ]; then
                [ "$2" ] && echo ${CURL} ${DROPDOWN}?term="$2"
            else
                [ "$2" ] && ${CURL} ${DROPDOWN}?term="$2"
            fi
            ;;
        list)
            if [ "$debug" == "ON" ]; then
                echo ${CURL} -L -s ${API}/list
            else
                ${CURL} -L -s ${API}/list
            fi
            ;;

        "-s")
            shift
            if [ "$debug" == "ON" ]; then
                echo ${CURL} -L -s ${API}/$* \| tee -a .gitignore
            else
                ${CURL} -L -s ${API}/$* | tee -a .gitignore
            fi
            ;;
        *)
            if [ "$debug" == "ON" ]; then
                echo ${CURL} -L -s ${API}/$*
            else
                ${CURL} -L -s ${API}/$*
            fi
            ;;
    esac
}

run $*

exit 0
