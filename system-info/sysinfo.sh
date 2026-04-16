#!/bin/bash

# 🔧 System Information Script
# Display CPU, RAM, disk usage, and system details
echo -e "\033[1;36m╔════════════════════════════════════════╗\033[0m"
echo -e "\033[1;36m║\033[0m  \033[1;32m🔧 SYSTEM INFORMATION\033[0m  \033[1;36m║\033[0m"
echo -e "\033[1;36m╚════════════════════════════════════════╝\033[0m"
echo ""
echo -e "\033[1;33m📊 System Information:\033[0m"
echo -e "\033[0;32m✓\033[0m Hostname: \033[1;34m$(hostname)\033[0m"
echo -e "\033[0;32m✓\033[0m OS: \033[1;34m$(uname -s)\033[0m"
echo -e "\033[0;32m✓\033[0m Kernel: \033[1;34m$(uname -r)\033[0m"
echo -e "\033[0;32m✓\033[0m Architecture: \033[1;34m$(uname -m)\033[0m"
echo ""
echo -e "\033[1;33m💾 CPU Information:\033[0m"
echo -e "\033[0;32m✓\033[0m CPU Model: \033[1;34m$(lscpu | grep 'Model name' | cut -d: -f2 | xargs)\033[0m"
echo -e "\033[0;32m✓\033[0m CPU Cores: \033[1;34m$(nproc)\033[0m"
echo -e "\033[0;32m✓\033[0m CPU Usage: \033[1;34m$(top -bn1 | grep 'Cpu(s)' | awk '{print $2}' | cut -d'%' -f1)%\033[0m"
echo ""
echo -e "\033[1;33m🧠 RAM Information:\033[0m"
FREE_MEM=$(free -h | awk 'NR==2 {print $2}')
USED_MEM=$(free -h | awk 'NR==2 {print $3}')
PERCENT=$(free | awk 'NR==2 {printf "%.0f", $3/$2*100}')
echo -e "\033[0;32m✓\033[0m Total RAM: \033[1;34m${FREE_MEM}\033[0m"
echo -e "\033[0;32m✓\033[0m Used RAM: \033[1;34m${USED_MEM}\033[0m"
echo -e "\033[0;32m✓\033[0m RAM Usage: \033[1;31m${PERCENT}%\033[0m"
echo ""
echo -e "\033[1;33m💿 Disk Information:\033[0m"
df -h | awk 'NR==2 {printf "\033[0;32m✓\033[0m Total Disk: \033[1;34m%s\033[0m\n", $2}'
df -h | awk 'NR==2 {printf "\033[0;32m✓\033[0m Used Disk: \033[1;34m%s\033[0m\n", $3}'
df -h | awk 'NR==2 {printf "\033[0;32m✓\033[0m Available: \033[1;34m%s\033[0m\n", $4}'
df -h | awk 'NR==2 {printf "\033[0;32m✓\033[0m Usage: \033[1;31m%s\033[0m\n", $5}'
echo ""
echo -e "\033[1;33m👤 User Information:\033[0m"
echo -e "\033[0;32m✓\033[0m Current User: \033[1;34m$(whoami)\033[0m"
echo -e "\033[0;32m✓\033[0m User ID: \033[1;34m$(id -u)\033[0m"
echo -e "\033[0;32m✓\033[0m Home Directory: \033[1;34m$(echo ~)\033[0m"
echo ""
echo -e "\033[1;33m🌐 Network Information:\033[0m"
echo -e "\033[0;32m✓\033[0m Hostname IP: \033[1;34m$(hostname -I | awk '{print $1}')\033[0m"
echo ""
echo -e "\033[1;36m════════════════════════════════════════\033[0m"
echo -e "\033[1;32m✨ System Information Displayed Successfully! ✨\033[0m"
echo -e "\033[1;36m════════════════════════════════════════\033[0m"