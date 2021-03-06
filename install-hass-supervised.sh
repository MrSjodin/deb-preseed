#!/bin/bash
# Script to prep and install Home Assistant Supervised in Debian
#
# Install dependencies
apt-get install -y jq wget curl udisks2 libglib2.0-bin network-manager dbus
#
# Download and install OS Agent
curl -fsSL -o /tmp/os-agent_1.2.2_linux_x86_64.deb https://github.com/home-assistant/os-agent/releases/download/1.2.2/os-agent_1.2.2_linux_x86_64.deb
dpkg -i /tmp/os-agent_1.2.2_linux_x86_64.deb
#
# Download and install Home Assistant Supervised
curl -fsSL -o /tmp/homeassistant-supervised.deb https://github.com/home-assistant/supervised-installer/releases/latest/download/homeassistant-supervised.deb
dpkg -i /tmp/homeassistant-supervised.deb
#
# Remove packages
rm /tmp/os-agent_1.2.2_linux_x86_64.deb
rm /tmp/homeassistant-supervised.deb
