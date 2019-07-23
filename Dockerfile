FROM debian:stretch
RUN wget https://dl.ui.com/firmwares/unifi-video/3.1.5/unifi-video_3.1.5~Debian7_amd64.deb
RUN dpkg -i unifi-video_3.1.5~Debian7_amd64.deb
RUN apt-get update && apt-get upgrade -y -i
