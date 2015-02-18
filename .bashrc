# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Use case-insensitive filename globbing
shopt -s nocaseglob
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi

# Umask
umask 027

# Functions
#
# Some people use a different file for functions
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
