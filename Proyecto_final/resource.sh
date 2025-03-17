#!/bin/bash
echo "Fecha: $(date)" >> /var/log/system_stats.log
echo "Uso de CPU:" >> /var/log/system_stats.log
top -b -n1 | head -10 >> /var/log/system_stats.log
echo "Uso de Memoria:" >> /var/log/system_stats.log
free -h >> /var/log/system_stats.log
echo "Uso de Disco:" >> /var/log/system_stats.log
df -h >> /var/log/system_stats.log
echo "Uso de Red:" >> /var/log/system_stats.log
ifstat -t 1 1 >> /var/log/system_stats.log
echo "------------------------" >> /var/log/system_stats.log
