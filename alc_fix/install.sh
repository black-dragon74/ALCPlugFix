#!/bin/bash

echo -e "Cleaning for previous installs"
sudo launchctl unload /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo rm -rf /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo rm -rf /usr/local/bin/ALCPlugFix
sudo rm -rf /usr/local/bin/alc-verb

echo -e "Installing ALCPlugFix Daemon to /usr/local/bin"
sudo cp ALCPlugFix /usr/local/bin
sudo chmod 755 /usr/local/bin/ALCPlugFix
sudo chown root:wheel /usr/local/bin/ALCPlugFix
sudo cp alc-verb /usr/local/bin
sudo chmod 755 /usr/local/bin/alc-verb
sudo chown root:wheel /usr/local/bin/alc-verb
sudo cp good.win.ALCPlugFix.plist /Library/LaunchAgents/
sudo chmod 644 /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo chown root:wheel /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo launchctl load /Library/LaunchAgents/good.win.ALCPlugFix.plist
echo -e "Daemon is installed and loaded. Enjoy!"

exit 0
