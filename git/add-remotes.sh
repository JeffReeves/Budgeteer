#!/bin/bash
# purpose: add all remotes for repo
# author: Jeff Reeves

# define repository's stub for the URL
REPO_STUB='Budgeteer'

# create the repo directory on bridges
ssh git@bridges "mkdir /git/Budgeteer.git && cd /git/Budgeteer.git && git config --global init.defaultBranch main && git init --bare && sed -i 's/master/main/' /git/rpi4-custom-os.git/HEAD"

# add bridges to git remote list
git remote add bridges git@bridges:/git/Budgeteer.git

# add gitlab to git remote list
git remote add gitlab git@gitlab.com:JeffReeves/Budgeteer.git

# add github to git remote list
git remote add github git@github.com:JeffReeves/Budgeteer.git

# update origin to bridges
git remote set-url origin git@bridges:/git/Budgeteer.git

# view all remotes
git remote -v

# open settings for gitlab and github in browser
#explorer.exe "https://gitlab.com/JeffReeves/Budgeteer/-/settings/repository"
#explorer.exe "https://gitlab.com/JeffReeves/Budgeteer/-/branches"
#explorer.exe "https://github.com/JeffReeves/Budgeteer/settings/branches"
#explorer.exe "https://github.com/JeffReeves/Budgeteer/branches"

