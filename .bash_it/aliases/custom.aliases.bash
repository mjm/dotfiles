alias gdh="git diff HEAD^"
alias changes="gdh"
alias gff="git flow feature"
alias ggpush="git push -u origin \$(current_branch)"

alias squish="git status && git commit -a --amend -C HEAD"
alias swb="git branch | cut -c 3- | selecta | xargs git checkout"
alias https="http --default-scheme=https --verify=no"

alias sedit="xcrun sedit"

alias og="ag --objc --objcpp"
alias win='tmux rename-window $(basename `pwd`)'
alias xc='open -a $(dirname $(dirname $(xcode-select -p)))'

current_branch() {
  git rev-parse --abbrev-ref HEAD
}
pj() {
  cd $(find "$PROJECT_PATHS" -maxdepth 1 -type d -not -name '.*' | selecta)
  win
}
tssh() {
  ssh -t "$@" "/usr/local/bin/tmux new -A -s base"
}
