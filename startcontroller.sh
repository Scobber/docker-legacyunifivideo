#!/bin/bash
echo "Unifi Controller Services Stub"
#/usr/bin/jsvc -home /usr/lib/jvm/java-8-openjdk-amd64/jre -cp /usr/share/java/commons-daemon.jar:/usr/lib/unifi-video/lib/airvision.jar -procname unifi-video  -Djava.awt.headless=true -Dfile.encoding=UTF-8 -Xmx1024M -debug com.ubnt.airvision.Main start
sleep 15
echo "Unifi Controller Web Stub"
cd /usr/lib/unifi-video
java -jar /usr/lib/unifi-video/lib/airvision.jar start
sleep 15
echo "Unifi Controller Server Logs"
tail -f /usr/lib/unifi-video/logs/server.log
