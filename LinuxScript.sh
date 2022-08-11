#!/bin/sh

# 2022-08-11
# Tested at Ubuntu 20.04 LTS (GNU/Linux5.4.0-1018-aws x86_64)
# No additional package needed.

MACHINE_ID=`cat /etc/machine-id`
CPU_USED=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
RAM_USED=`free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }'`
DISK_USED=`df -h | awk '$NF=="/"{printf "%s\t\t", $5}'`

echo $MACHINE_ID
echo $CPU_USED 
echo $RAM_USED 
echo $DISK_USED