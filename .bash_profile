#
# Customization
#

# GIT FUNCTIONS
git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# TERMINAL PROMPT
#PS1="\[\e[0;93m\]\u\[\e[m\] "    # username
#PS1+="\[\e[0;95m\]\W\[\e[m\]"    # current directory
#PS1+="\[\e[0;92m\]\$(git_branch)\[\e[m\]"    # current branch
#PS1+=" >> "    # end prompt
PS1="\[\e[0;31m\]\u\[\e[m\] "    # username
PS1+="\[\e[0;32m\]\W\[\e[m\]"    # current directory
PS1+="\[\e[0;33m\]\$(git_branch)\[\e[m\]"    # current branch
PS1+=" >> "    # end prompt
export PS1;
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

