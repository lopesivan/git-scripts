#!/usr/bin/env bash

test -n "$DEBUG" && set -x

# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################

# ----------------------------------------------------------------------------
# Run!
for f in $(git status --porcelain | grep '^??' | sed 's/^?? //'); do
    test -d "$f" && echo $f\* >> .gitignore;
done

# ----------------------------------------------------------------------------
exit 0
