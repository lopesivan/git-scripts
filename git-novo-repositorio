#!/usr/bin/env bash

#
# ----------------------------- error functions ------------------------------
#

# The error function print menssage of error.
#
_error() {
  exec 4>&1 # stdout duplicado ( FD 4 tem as mesmas caracteristicas
            # do STDOUT), aponta para o terminal.
  exec 1>&2
  echo ERROR: "$*"
  exec 1>&4 # FD 1 recebe as caracteristicas de FD 4.
            # FD 1 ressetado.
  exec 4>&- # FD 4 eh liberado.
}

# The error function print menssage of error.
#
_abort_now() {
  _error '***' aborted '***'
  exit 1
}

# Validation:
# The program requires an argument or abort the execution
#
test $# -eq 0 && { _error "Você não informou o nome do repositório"; _abort_now;}

# ----------------------------------------------------------------------------

original_dir=$PWD
dir=$(echo "$*" | sed -r 's/[  ]+/-/g')

# Inicialize
if test -d ${dir}; then
  cd ${dir}
  git init --shared=true
  git add .
  git commit -m "my first commit"
else
  _error "O diretório não existe";
  _abort_now
fi

# retorna para workspace
cd $original_dir
pwd
git clone --bare ${dir} ${dir}.git
echo
echo Upload:
echo ================================
echo scp -P 22 -r ${dir}.git git:/tmp/ | tee -a upload.txt
echo ssh -t -p22 git "sudo mv /tmp/${dir}.git /home/git/git-server/repos/"| tee -a upload.txt
echo ssh -t -p22 git "make -C /home/git/git-server/ restart"| tee -a upload.txt
echo ================================
echo

echo clone:
echo ================================
echo git clone git:/git-server/repos/${dir}.git | tee clone.txt
echo ================================
echo

echo
echo bye
# ----------------------------------------------------------------------------
exit 0
