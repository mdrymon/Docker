FROM kalilinux/kali-linux-docker:latest

MAINTAINER mickael.drymon@gmail.com

RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean 

RUN apt-get -y install ruby postgresql metasploit-framework

ENTRYPOINT service postgresql start && /usr/share/metasploit-framework/msfupdate && /bin/bash
