function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

alias ls='ls -AG'

alias a='export AWS_DEFAULT_PROFILE=(grep -iE "^[]+[^*]" ~/.aws/credentials|tr -d []|peco)'
alias c='cat (ls $HOME/.custom_scripts/datas/peco/snippets/* | peco) | peco | tr -d "\n" | pbcopy'
alias d='docker exec -it (docker ps --format "{{.Names}}" | peco) sh'
alias k='bash $HOME/KeePassX/clean; eval $HOME/KeePassX/KeePassX.app/Contents/MacOS/KeePassX $HOME/KeePassX/pass.kdb'
alias r='peco_select_ghq_repository'
alias s='ssh (grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
alias t='tree'

set -U fish_user_paths $HOME/bin $fish_user_paths
set -U fish_user_paths $HOME/.rbenv/bin $fish_user_paths
rbenv init - | source
