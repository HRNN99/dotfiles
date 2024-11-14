alias ls='ls --color=always -lhr '
alias ..="cd .."
alias clear="clear -x"

alias lsf="bash_print_user_defined_functions"

#MIS ALIAS
alias e='trans -t es'
alias s='trans -s es -t en'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade -y'
alias upgradable='sudo apt list --upgradable'
alias puertos='sudo ss -ltnp'

#GIT alias
alias gc='git commit -m '
alias gca='git add . && git commit -m '
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias gl1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)"
alias gdiff='git diff'
alias gpush='git push origin master'
alias gpull='git pull'
alias gbr='git checkout -b '
alias gch='git checkout '
