#!/bin/bash

# IMPORTANT: Source RVM as a function into local environment.
#            Otherwise switching gemsets won't work.
[ -s "$HOME/.rvm/scripts/rvm" ] && . "$HOME/.rvm/scripts/rvm"

# Enable shell debugging.
set -x

#+-----------------------------------------------------------+

rvm 1.9.2-p290@$1
rvm gemdir
gem env gemdir
cd /home/sedzen/work/$1
git co master
git pull
bundle install
rake db:migrate
rake assets:precompile
