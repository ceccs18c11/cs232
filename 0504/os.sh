echo "Operating system, kernel version, memory information" 
echo " CPU and GPU information"
neofetch

echo "Available shells:"

cat /etc/shells

echo "Hard Disk information:"

df -h

echo "Mounted filesystems:"

mount | column -t

echo "Release number:"

cat /etc/os-release

