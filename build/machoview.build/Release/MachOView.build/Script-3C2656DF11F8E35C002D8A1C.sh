#!/bin/sh
#!/bin/bash
# Auto Increment Version Script
buildPlist="Info.plist"
CFBundleShortVersionString=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" $buildPlist)
CFBuildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBuildNumber" $buildPlist)
CFBuildNumber=$(($CFBuildNumber + 1))
/usr/libexec/PlistBuddy -c "Set :CFBuildNumber $CFBuildNumber" $buildPlist
CFBuildDate=$(date)
/usr/libexec/PlistBuddy -c "Set :CFBuildDate $CFBuildDate" $buildPlist
# set Bundle version
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $CFBuildNumber" $buildPlist
echo "New build: $CFBundleShortVersionString (build: $CFBuildNumber) $CFBuildDate"

