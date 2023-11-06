#!/bin/bash

# Set your New Relic license key
sudo nrsysmond-config --set license_key=ae4f67198be65ab783366eb38e896e27FFFFNRAL

# Start the New Relic agent
sudo systemctl start newrelic-sysmond
