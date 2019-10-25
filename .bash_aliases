alias vim="nvim"
alias vi="nvim"

gitcommit () {
  git add -A . && git commit -m "$@" && git push
}
