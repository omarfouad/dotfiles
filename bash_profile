PATH="/usr/local/bin:$PATH"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias killpg="rm /usr/local/var/postgres/postmaster.pid"
alias anvilFix="sudo pfctl -f /etc/pf.conf; sudo pfctl -e"
alias modemStart="sudo /Applications/HiLink.app/Contents/Resources/mbbserviceSetup.pkg/Contents/Archive/mbbservice ; exit;"
alias simpleServer="sudo python -m SimpleHTTPServer"
alias ls="ls -alG"
alias dummypush="cd /Users/omarfouad/work/git/dummify; python gitdummy.py"
alias vim="/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/MacOS/Vim"
alias vim="/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/MacOS/Vim"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1="$TITLEBAR\n\[${UC}\]-OF- \[${COLOR_LIGHT_GREEN}\]\${PWD} \[${COLOR_BLACK}\] \[${COLOR_YELLOW}\]\$(parse_git_branch) \n\[${COLOR_YELLOW}\]→\[${COLOR_NC}\] "

export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}
