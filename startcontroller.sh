#!/bin/bash
java -jar /usr/lib/unifi-video/lib/airvision.jar start
tail -f /usr/lib/unifi-video/log/server.log
