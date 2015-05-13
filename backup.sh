#!/bin/bash
DATE=`date +%y%m%d`
mkdir -p /root/backup/$DATE
cd /var/www/html
tar cvzf /root/backup/$DATE/$DATE.zip *
mysqldump -u root -pYourPassword --databases YourDatabaseName > /root/backup/$DATE/$DATE.sql
