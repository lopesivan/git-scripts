#!/usr/bin/python
#
# Meld wrapper is just a simple script that opens meld
# with the correct arguments meld expects.
#
# Just configure git to use this script and you are done:
# git config --global diff.external </path/to/script/>meld.py
#
import subprocess, sys
exit(subprocess.call(["meld", sys.argv[2], sys.argv[5]]))