# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin
PATH="$HOME/.local/bin/:$HOME/.nvm/version/:$PATH"

export PATH

alias ls='ls -la --color';
alias l='ls';
alias gits='git status';

alias grep='grep --color'
alias g='grep'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$[\033[33m\]\$(parse_git_branch)\[\033[00m\] '
export PS1="\[\033[01;35m\]\u@\h \[\033[01;32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias vim='gvim -v'
alias open='gio open'

alias v="vim";
alias b="cd ..";
alias c="cd";

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
