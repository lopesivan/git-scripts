To extend [fork0][1]'s [comment][2], you need to combine:

- "[How to iterate through all git branches using bash script][3]"
- "[`git checkout` specific files from another branch][4]" (`git checkout <branch_name> -- <paths>`, from [`git checkout` man page][5])

Ie:

    #!/bin/bash
    branches=()
    eval "$(git for-each-ref --shell --format='branches+=(%(refname))' refs/heads/)"
    for branch in "${branches[@]}"; do
      if [[ "${branch}" != "master" ]]; then
        git checkout ${branch}
        git checkout master -- yourFile
      fi
    done

(This is be adapted to your case, since here it always checkout the file from
the `master` branch.)

  [1]: http://stackoverflow.com/users/410126/fork0
  [2]: http://stackoverflow.com/questions/11940977/how-to-update-a-file-across-all-branches-in-a-git-repository#comment15906759_11940977
  [3]: http://stackoverflow.com/a/3847586/6309
  [4]: http://nicolasgallagher.com/git-checkout-specific-files-from-another-branch/
  [5]: http://git-scm.com/docs/git-checkout
