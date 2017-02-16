# git
alias gita='git add '
alias gitap='git add -p '
alias gitb='git branch '
alias gitbd='git branch -d '
alias gitc='git commit '
alias gitca='git commit --amend '
alias gitd='git diff '
alias gitdc='git diff --cached '
alias gith='git push '
alias githo='git push origin '
alias gitl='git log'
alias gitll='git log -1 HEAD'
alias gitm='git merge '
alias gitob='git checkout -b '
alias gito='git checkout '
alias gitp='git pull --rebase '
alias gitpo='git pull --rebase origin '
alias gitr='git rebase '
alias gitrc='git rebase --continue '
alias gits='git status '
alias gitw='git whatchanged '
alias gitwp='git whatchanged -p '

# git functions
gitvbd () {
  if [ $# -ne 2 ]
   then
     echo "Usage: $FUNCNAME <source-branch> <feature-branch>"
     return 1
  fi
  git checkout $1 && git pull --rebase origin $1 && git branch -d $2
}

gitvob () {
  if [ $# -ne 2 ]
   then
     echo "Usage: $FUNCNAME <source-branch> <feature-branch>"
     return 1
  fi
  gitvp $1 && gitob $2
}

gitvp () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <source-branch>"
     return 1
  fi
  git checkout $1 && git pull --rebase origin $1
}
