echo "Operating System version and release"
echo " "
lsb_release -a
echo " "
echo "Kernel Version"
echo " "
uname -r
echo " "
echo "All available shells"
echo " "
cat /etc/shells
echo " "
echo "Memory information"
echo " "
free
echo "Hard Disk information"
echo " "
sudo hdparm -I /dev/sda
echo " "
echo "Mounted filesystems"
echo " "
df -h
echo " "
echo "CPU Related information, Processor type and speed"
echo " "
less /proc/cpuinfo

