FROM centos:latest
MAINTAINER <xrsec troy@zygd.site>

COPY CobaltStrike /CobaltStrike
COPY Dockerfile /CobaltStrike

RUN yum update -y \
    && yum upgrade -y \
    && yum install wget vim curl nc ncurses -y \
    && wget -O /tmp/jdk-16_linux-aarch64_bin.rpm https://download.oracle.com/otn-pub/java/jdk/16+36/7863447f0ab643c585b9bdebf67c69db/jdk-16_linux-aarch64_bin.rpm?AuthParam=1618768126_0a8aef3afce1ccdc2d8e387f4b4c574b \
    && rpm -ivh /tmp/jdk-16_linux-aarch64_bin.rpm \
    && rm /tmp/jdk-16_linux-aarch64_bin.rpm \
    && chmod 777 /CobaltStrike/teamserver

ENV server_ip 127.0.0.1
ENV server_port 50050
ENV aliasname "Bing Wallpaper"
ENV dname "CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US"
STOPSIGNAL SIGWINCH

EXPOSE 50050
CMD ["/CobaltStrike/teamserver"]
