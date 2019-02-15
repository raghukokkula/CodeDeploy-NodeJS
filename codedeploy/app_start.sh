#!/bin/bash

# This script is used to start the application
cd /usr/cddeploy
pm2 start /usr/cddeploy/bin/www -n www -f
