# rename branch 1 to branch 2
git checkout -b "$2" "$1"    # create and switch to the release branch
git push -u origin "$2"        # push the release branch to the remote and track it
git branch -d "$1"              # delete local master
git push --delete origin "$1"   # delete remote master
git remote prune origin           # delete the remote tracking branch