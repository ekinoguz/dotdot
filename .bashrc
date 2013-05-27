# Get git branch on terminal
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "["${ref#refs/heads/}"]";
}

#PS1="\W\$(parse_git_branch)${BASH_NEWLINE}\$ ";
#PS1="\e[0;32m\u\w\$(parse_git_branch)\$\e[m :) $ "
#PS1="\e[0;32m\u\w\e[m\e[0;33m\$(parse_git_branch)\e[m :) $ ";
PS1="\e[0;32m\w\e[m\e[0;33m\$(parse_git_branch)\e[m :) $ ";

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export SVN_EDITOR=vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$PATH:/Applications/virtualenv-1.8.4/virtualenv/

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PYTHONIOENCODING=utf-8

alias g="git"
alias f="find . | xargs grep"
alias grep="grep --color=auto"
alias a='aria2c --seed-time=0'
alias em='emacs -nw'
alias ping='ping -c 3'
alias ..='cd ../'
alias ...='cd ../../'

BASH_NEWLINE="\n"
BASH_GRAY="\[\e[1;30m\]"
BASH_LIGHT_GREEN="\[\e[1;32m\]"
BASH_WHITE="\[\e[1;0m\]"
BASH_LIGHT_GRAY="\[\e[0;37m\]"

# Fix LS colors
export LS_COLORS='di=01;33'

# Heyo