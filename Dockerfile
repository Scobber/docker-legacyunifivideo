FROM debian:stretch
RUN apt-get update && apt-get install -y mongodb-server sudo lsb-release openjdk-8-jre-headless jsvc wget && 
    wget https://dl.ui.com/firmwares/unifi-video/3.1.5/unifi-video_3.1.5~Debian7_amd64.deb &&
    dpkg -i unifi-video_3.1.5~Debian7_amd64.deb &&
    apt-get clean && rm -rf /var/lib/apt/lists/ && rm unifi-video_3.1.5~Debian7_amd64.deb
VOLUME unifi-videodata:/usr/lib/unifi-video/data
VOLUME unifi-videologs:/usr/lib/unifi-video/logs
ENTRYPOINT java -jar /usr/lib/unifi-video/lib/airvision.jar start
