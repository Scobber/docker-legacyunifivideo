#!/bin/bash
echo "Unifi Controller Stub"
java -jar /usr/lib/unifi-video/lib/airvision.jar start
sleep 15
echo "Unifi Controller Server Logs"
tail -f /usr/lib/unifi-video/logs/server.log
