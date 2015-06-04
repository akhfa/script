#!/bin/bash
#######################################################################################
# THIS SCRIPT IS USED FOR BUILD APK WITH CORDOVA FOR PHONEGAP			      #
# RUN THIS SCRIPT FROM CORDOVA PROJECT FOLDER					      #
# THE FOLDER CAN BE GIT REPOSITORY						      #
# PLEASE PUSH TO MASTER BEFORE BUILD THE APK, OR CHANGE MASTER TO THE BRANCH YOU WANT #
#######################################################################################
git checkout .
git pull origin master
DATE=`date +%y%m%d%H%M%S`
WEBDIR=/your/web/directory/where/the/apk/will/be/put
APKNAME=apk-name
LINK=download-url.com
cordova platform remove android
cordova platform add android
cordova build android
echo "Move to $WEBDIR"
mv /folder/where/is/the/project/project-name/platforms/android/build/outputs/apk/android-debug.apk $WEBDIR/$APKNAME-$DATE.apk
cordova platform remove android
echo "Build Finished"
echo "Download link: http://$LINK/$APKNAME-$DATE.apk"
