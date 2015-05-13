#!/bin/bash
DATE=`date +%y%m%d`
mkdir -p /root/backup/$DATE
cd /var/www/html
tar cvzf /root/backup/$DATE/$DATE.tar.gz *
mysqldump -u YourDatabaseUsername -pYourDatabasePassword --databases YourDatabaseName > /root/backup/$DATE/$DATE.sql
