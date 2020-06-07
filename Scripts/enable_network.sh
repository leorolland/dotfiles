ls /sys/class/net/ 
INT=`ls /sys/class/net/ | head -1` 
echo "Selecting interface : $INT"
# systemctl start "dhcpcd@.${INT}service"
sudo dhcpcd $INT
