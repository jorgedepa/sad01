echo -e 'auth_param basic program /usr/lib/squid/basic_ncsa_auth /etc/squid/users\nacl usuarios_autorizados proxy_auth REQUIRED\nhttp_access allow usuarios_autorizados' | cat - /etc/squid/squid.conf > temp && sudo mv temp /etc/squid/squid.conf
sudo apt update
sudo apt install apache2-utils -y
echo "Introduce un nombre de usuario?"
read usuario
sudo htpasswd -c /etc/squid/users $usuario
sudo systemctl restart squid
