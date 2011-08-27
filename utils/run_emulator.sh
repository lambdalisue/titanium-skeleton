#!/bin/sh
ROOT=$(cd $(dirname $0);pwd)
EMULATOR="$ANDROID_SDK/tools/emulator"
TITANIUM="$TITANIUM_SDK/titanium.py"
cd $ROOT/../

if [ "$1" = "android" ]; then
    # Run emulator if it isn't running
    if ps -ef | grep emulator | grep -v grep; then
        "$EMULATOR" -avd default&
    fi
    # fastdev server
    if "$TITANIUM" fastdev status | egrep 'No Fastdev|stopped'; then
        echo "Run fastdev server"
        # Run fastdev server if it isn't running
        "$TITANIUM" fastdev start&
        echo "Compile and install apps..."
        # Compile and install app
        "$TITANIUM" run --platform=android
    else
        echo "Restart fastdev server"
        # Restart fastdev server
        "$TITANIUM" fastdev restart-app
    fi
elif [ "$1" = "iphone" ]; then
    "$TITANIUM" run --platform=iphone
else
    echo "Usage: run_emulator <platform>"
fi
