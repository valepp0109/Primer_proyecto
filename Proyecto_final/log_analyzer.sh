#!/bin/bash

LOG_FILE="/var/log/syslog"
ERROR_LOG="$HOME/error_logs.txt"

echo "📄 Analizando logs en busca de errores..."
grep -i "error" $LOG_FILE | awk '{print $1, $2, $5, $6, $7, $8}' > $ERROR_LOG
echo "✅ Resultados guardados en $ERROR_LOG"
