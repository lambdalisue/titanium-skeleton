#!/bin/sh
#
# Run iPhone/Android emulator
#
# Usage:
#   ./run_emulator.sh iphone
#
UNAME=`uname`
VERSION=1.7.2
ANDROID_SDK=$HOME/Library/AndroidSDK

if [ $UNAME = 'Linux' ]; then
    TITANIUM=$HOME/.titanium/mobilesdk/linux/$VERSION/titanium.py
elif [ $UNAME = 'Darwin' ]; then
    TITANIUM="$HOME/Library/Application Support/Titanium/mobilesdk/osx/$VERSION/titanium.py"
fi

if [ $1 = 'android' ]; then
    # Having no idea but didn't work
    "$TITANIUM" run --platform=android --android=$ANDROID_SDK
elif [ $1 = 'iphone' ]; then
    "$TITANIUM" run --platform=iphone
fi
