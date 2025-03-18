# 📝 Manual de Usuario - Proyecto de Monitoreo del Sistema  

## 📌 Introducción  
Este manual explica la instalación, ejecución y detalles técnicos de los scripts desarrollados para monitorear el sistema.  

## 🔹 1️⃣ Instalación  
Para instalar y configurar el entorno, ejecutar:  
```bash
sudo apt install git  # Instalar Git
git clone https://github.com/valepp0109/Primer_Proyecto.git
cd Primer_Proyecto
chmod +x *.sh  # Dar permisos de ejecución a los scripts

./backup_manager.sh
./log_analyzer.sh
./resource_monitor.sh

Los siguientes comandos fueron clave en el desarrollo de los scripts:

top -b -n1 | grep "Cpu(s)" → Obtiene el uso actual de CPU.
free -h → Muestra información de la memoria RAM.
df -h → Reporte del uso del disco.
tar -czf backup.tar.gz /ruta/directorio → Comprime un directorio en formato .tar.gz.
crontab -e → Configura tareas automáticas en el sistema.
git log --oneline → Muestra el historial de commits de forma resumida.

SE uso en:}
Ubuntu
Debian 11
Kali linux
