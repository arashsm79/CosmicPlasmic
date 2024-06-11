#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Set up display manager
rm -f /etc/systemd/system/display-manager.service
ln -s /usr/lib/systemd/system/cosmic-greeter.service /etc/systemd/system/display-manager.service

# System services
systemctl enable podman.socket
systemctl enable docker.socket
systemctl enable cosmic-greeter.service
