#!/bin/bash

# Add New Relic GPG key and repository
curl -s https://download.newrelic.com/548C16BF.gpg | sudo gpg --dearmor -o /usr/share/keyrings/newrelic-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/newrelic-archive-keyring.gpg] https://download.newrelic.com/debian/ newrelic non-free" | sudo tee /etc/apt/sources.list.d/newrelic.list

# Update package list and install the New Relic agent
sudo apt-get update
sudo apt-get install -y newrelic-sysmond
