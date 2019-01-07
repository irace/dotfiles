alias reload='source ~/.bash_profile'

# OS X

alias fix-spotlight-indexing='sudo mdutil -a -i off && sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist && sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist && sudo mdutil -a -i on'

# Git

alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias mergefix='git commit -am "Fix merge conflicts" && git push'
alias clean-branches='git branch --merged | grep -v "\*" | grep -v master | grep -v develop | grep -v testflight | grep -v staging | grep -v production | xargs -n 1 git branch -d'
alias develop='git checkout develop'

# Misc. development

alias simulators='cd ~/Library/Developer/CoreSimulator/Devices/'
alias pr='pullrequest'
alias lime='atom'
alias derp='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias app='cd ~/Projects/prefer/app'
alias backend='cd ~/Projects/prefer/backend'
alias tailapp='heroku logs -t --app interface-tech'
alias pi='bundle exec pod install'
alias pu='bundle exec pod update'
alias gif='/usr/local/bin/mp4togif'
alias simulator='open -n /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias b='bundle exec'

# Creating builds

alias version-bump='agvtool next-version -all'
alias register-devices='match adhoc -a com.prefer.client-beta,com.prefer.pro-beta --force'

export EDITOR=emacs

source /usr/local/bin/git-completion.bash

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
