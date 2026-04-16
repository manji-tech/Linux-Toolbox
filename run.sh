#!/bin/bash

# main script to run all scripts

echo "\e[34mRunning the Linux Toolbox Scripts...\e[0m"   

echo "🌟 Starting the scripts..."

./sysinfo.sh
./clean-temp.sh
./update-system.sh
./net-info.sh

echo "🌟 All scripts executed!"
