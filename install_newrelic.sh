#!/bin/bash

# Add New Relic GPG key
curl -s https://download.newrelic.com/548C16BF.gpg | sudo apt-key add -

# Add New Relic APT repository
echo "deb http://apt.newrelic.com/debian/ newrelic non-free" | sudo tee /etc/apt/sources.list.d/newrelic.list

# Update package list
sudo apt-get update

# Install New Relic Infrastructure Agent
sudo apt-get install newrelic-infra -y

# Set your New Relic license key
sudo newrelic-infra-config set license_key=ae4f67198be65ab783366eb38e896e27FFFFNRAL

# Start the New Relic Infrastructure Agent
sudo systemctl start newrelic-infra
