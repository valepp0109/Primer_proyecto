#!/bin/bash

LOG_FILE="/var/log/system_stats.log"

echo "📊 Monitoreo del sistema - $(date)" | tee -a $LOG_FILE

echo -e "\n🔹 Uso de CPU:" | tee -a $LOG_FILE
top -b -n1 | grep "Cpu(s)" | tee -a $LOG_FILE

echo -e "\n🔹 Uso de Memoria RAM:" | tee -a $LOG_FILE
free -h | tee -a $LOG_FILE

echo -e "\n🔹 Espacio en Disco:" | tee -a $LOG_FILE
df -h | tee -a $LOG_FILE

echo -e "\n🔹 Uso de Red:" | tee -a $LOG_FILE
ifstat 1 1 | tee -a $LOG_FILE
