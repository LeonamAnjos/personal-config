#! /bin/bash

if ! command -v git &> /dev/null
then
    echo "Git is not installed!"
    exit
fi

git config --global alias.st 'status'
git config --global alias.s  'status -sb'

git config --global alias.co 'checkout'
git config --global alias.ci 'commit -m'

git config --global alias.co   'checkout'
git config --global alias.com  'checkout master'
git config --global alias.conb 'checkout -b'

git config --global alias.ci   'commit -m'
git config --global alias.cia  'commit --amend'
git config --global alias.cian 'commit --amend --no-edit'

git config --global alias.co   'checkout'
git config --global alias.com  'checkout master'
git config --global alias.conb 'checkout -b'

git config --global alias.d  'diff'
git config --global alias.dc 'diff --cached'

git config --global alias.a  'add'
git config --global alias.ap 'add --patch'

git config --global alias.l  'pull'
git config --global alias.lf 'pull --ff-only'
git config --global alias.up 'pull --rebase'
git config --global alias.lob '!git pull origin $(git branch --show-current)'

git config --global alias.p   'push'
git config --global alias.pot 'push origin --tags'
git config --global alias.pob '!git push origin $(git branch --show-current)'

git config --global alias.rh    'reset HEAD'
git config --global alias.rhh   'reset HEAD --hard'
git config --global alias.rp    'reset --patch'

git config --global alias.cln   'clean -dfx'
git config --global alias.clnh  '!git reset --hard && git clean -dfx'

git config --global alias.chmod 'update-index --chmod=+x --add'

git config --global alias.t   '!git tag -a $1 -m $1 #'
git config --global alias.tl  '!git tag --sort=-version:refname | head -n $1 #'
git config --global alias.tlc '!git show-ref --tags -d | grep {} | tail -10 | sort -r'
git config --global alias.tdr '!git tag -d $1; git push --delete origin $1 --no-verify #'

git config --global alias.tr  '!T="release/$(date +"%Y-%m-%d")$2/prd01/$1"; git t $T #'
git config --global alias.trh '!T="release/$(date +"%Y-%m-%d")$2/prd01/$1/HOTFIX"; git t $T #'

git config --global alias.trp  '!git tr $1 $2; git pot #'
git config --global alias.trhp '!git trh $1 $2; git pot #'

git config --global alias.slc 'shortlog --numbered --summary --email --no-merges'
git config --global alias.lg  'log --pretty=format:"%C(auto)%h%d %C(green)(%cs) %C(cyan)%an %C(auto)%s"'
git config --global alias.lgg 'log --graph --decorate --all'

git config --global alias.alias 'config --get-regexp alias'
git config --global alias.user  'config --get-regexp user'
git config --global alias.rx    'config --get-regexp'

git config --global alias.rbi   'rebase --interactive'
git config --global alias.rbc   'rebase --continue'
git config --global alias.rba   'rebase --abort'

git config --global alias.cp   'cherry-pick'

git config --global alias.wc   'whatchanged --patch --abbrev-commit'

git config --global alias.update 'fetch --all --tag --prune'

git config --global alias.cleanup '!git update && git gc'

git config --global branch.master.mergeOptions '--no-ff --no-commit'

git config --global core.autocrlf   false
git config --global core.safecrlf   true
git config --global core.ignoreCase false

git config --global grep.linenumber true
