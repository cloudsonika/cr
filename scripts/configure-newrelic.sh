#!/bin/bash

# Set your New Relic license key
sudo nrsysmond-config --set license_key=YOUR_LICENSE_KEY

# Start the New Relic agent
sudo systemctl start newrelic-sysmond
