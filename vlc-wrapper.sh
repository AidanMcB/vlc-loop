#!/bin/bash

# Set DISPLAY environment variable to point to the Raspberry Pi's display
export DISPLAY=:0

# Run VLC with any additional options you want
exec /usr/bin/cvlc "$@"