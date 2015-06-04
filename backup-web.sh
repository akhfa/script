#!/bin/bash
################################################################################
# THIS IS SCRIPT FOR BACKUP ENTIRE WEB FILE AND THE DATABASE		       #
# IT WILL CREATE TAR.GZ FILE UNDER ROOT DIRECTORY WITH DATE IN THE FOLDER NAME #
# DATABASE WILL BE BACKED UP IN SAME DIRECTORY WITH THE TAR.GZ FILE	       #
################################################################################
DATE=`date +%y%m%d`
mkdir -p /root/backup/$DATE
cd /var/www/html
tar cvzf /root/backup/$DATE/$DATE.tar.gz *
mysqldump -u YourDatabaseUsername -pYourDatabasePassword --databases YourDatabaseName > /root/backup/$DATE/$DATE.sql
