#!/bin/sh
#
# Automatically compile Coffee/*.coffee to Resources/*.js
#
# Required:
#   - coffee-script
#     http://jashkenas.github.com/coffee-script/
#   - jitter
#     https://github.com/TrevorBurnham/Jitter
#   - growlnotify
#     http://growl.info/extras.php
#

# Change working directory
ROOT=$(cd $(dirname $0);pwd)
cd $ROOT
# Execute jitter
jitter ../Coffee ../Resources
