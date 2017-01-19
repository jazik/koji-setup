#!/bin/sh

for serv in kojira kojid httpd postgresql; do
	systemctl stop $serv
done

dnf -y remove 'koji*' httpd mod_wcgi mod_ssl postgresql-server

rm -rf /etc/koji* /etc/httpd/conf.d/koji* /var/lib/pgsql /etc/pki/koji /etc/httpd/conf.d/ssl.conf*

