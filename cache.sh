echo -e "cache_mem 1024 MB\ncache_dir aufs /var/spool/squid 1024 16 256\nmaximum_object_size 5120 MB\naccess_log /var/log/squid/access.log\ncache_store_log /var/log/squid/store.log" >> /etc/squid/squid.conf
sudo systemctl restart squid
sudo apt update
sudo apt install ccze -y
sudo history -c
sudo tail -f /var/log/squid/access.log | ccze -CA
