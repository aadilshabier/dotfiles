
bindkey ";5C" forward-word
bindkey ";5D" backward-word

alias vim=nvim

#autoload -Uz vcs_info # enable vcs_info
#precmd () { vcs_info } # always load before displaying the prompt
#zstyle ':vcs_info:*' formats ' %s(%F{green}%b%f)' # git(main)

#PS1='%n@%m %F{red}%/%f$vcs_info_msg_0_ $ ' # david@macbook /tmp/repo (main) $
PS1='[%F{green}%?%f] %F{yellow}%n@%m%f:%F{blue}%~%f $ '

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/.local/share/gem"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin/:$PATH"
#export PATH="$HOME/gems/bin/:$PATH"
