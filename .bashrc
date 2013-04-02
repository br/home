#!/bin/bash

: ${DISPLAY:=}

source "$HOME/libexec/_jason"
set +efu

require 'whatever'

require 'pancake/macports_profile' $shome/local
require 'rvm' 1.9.3 # 'rbenv'
require 'puddle'

require 'paul'
require 'aaron'
require 'vim'
require 'git'
require 'perl'
require 'gandalf' "${GANDALF:-$shome}"

require 'cue'
require 'junas'

require 'aliases'
require 'terminal'
require 'xmonad'

require 'osx'
require 'vagrant'
require 'ssh'

if [[ -n "${PATH_OVERRIDE:-}" ]]; then
  PATH="$PATH_OVERRIDE:$PATH"
fi

set +u
