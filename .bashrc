# support functions
function reload {
  pushd ~ > /dev/null
  source "$HOME/.bash_profile"
  popd > /dev/null
}

function update {
  pushd ~ > /dev/null
  git update origin master
  bundle --local
  git push -u origin HEAD:master
  reload
  reload
  popd ~ > /dev/null
}

# let pancake initialize its components
eval "$(~/.getting-started/bin/pancake init)"
alias p="pancake"

# personal libraries
require 'vim'
require 'git'
require 'xmonad'

# other settings
set bell-style none
set +H
