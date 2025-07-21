#!/bin/bash
# Script to execute Maestro test and upload screenshots to SmartUI

ps -ef                       # List system processes
adb devices                 # Show connected devices

mkdir screenshots           # Create screenshot storage directory
env                         # Print environment variables

# Check installed Maestro version
/home/ltuser/.maestro/bin/maestro -v

# Run the Maestro test YAML passed from discovery config
/home/ltuser/.maestro/bin/maestro test ./maestro-test/$1

# Upload all screenshots to SmartUI build (automated)
tree .
pwd
npx smartui upload ./screenshots --buildName ${JOB_ID}
