#!/bin/bash
mkdir -p /var/www/blog.akhfa.me/public_html
chown -R $USER:$USER /var/www/blog.akhfa.me/public_html
chmod -R 755 /var/www/blog.akhfa.me/public_html

# uncomment this if you have not made virtualhost before
# mkdir /etc/httpd/sites-available
# mkdir /etc/httpd/sites-enabled
# echo "IncludeOptional sites-enabled/*.conf" >> /etc/httpd/conf/httpd.conf

# wget example.com.conf

ln -s /etc/httpd/sites-available/blog.akhfa.me.conf /etc/httpd/sites-enabled/blog.akhfa.me.conf
