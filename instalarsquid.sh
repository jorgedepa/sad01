sudo apt update
sudo apt install squid -y
clear
ip a
echo "Cúal es tu IP?"
read ip
clear
sudo iptables -A INPUT -s $ip/24 -p tcp --dport 3128 -j ACCEPT
echo 'http_access allow all' | cat - /etc/squid/squid.conf > temp && sudo mv temp /etc/squid/squid.conf
sudo systemctl restart squid
clear
echo "Tu squid va en $ip en el puerto 3128"
