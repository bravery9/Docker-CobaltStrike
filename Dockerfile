FROM centos:latest
MAINTAINER <xrsec troy@zygd.site>

COPY cobaltstrike /cobaltstrike
COPY Dockerfile /cobaltstrike

RUN yum update -y \
    && yum upgrade -y \
    && yum install wget vim curl nc ncurses -y \
    && wget -O /tmp/jdk-16_linux-aarch64_bin.rpm https://download.oracle.com/otn-pub/java/jdk/16.0.1+9/7147401fd7354114ac51ef3e1328291f/jdk-16.0.1_linux-aarch64_bin.rpm?AuthParam=1619107727_5bb0fd3315063d9b024ef81e7787c70a \
    && rpm -ivh /tmp/jdk-16_linux-aarch64_bin.rpm \
    && rm /tmp/jdk-16_linux-aarch64_bin.rpm \
    && chmod 777 /cobaltstrike/teamserver

ENV server_ip 127.0.0.1
ENV server_port 50050 80 443
ENV aliasname "Bing Wallpaper"
ENV dname "CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US"
STOPSIGNAL SIGWINCH

EXPOSE 50050 80 443
CMD ["/cobaltstrike/teamserver"]
