FROM centos:latest
LABEL maintainer="xrsec"
LABEL mail="troy@zygd.site"

# split -b 50m jdk-16.0.2_linux-x64_bin.rpm
COPY cobaltstrike.server /cobaltstrike
COPY Dockerfile /cobaltstrike
COPY xaa /tmp
COPY xab /tmp
COPY xac /tmp
COPY xad /tmp

RUN yum update -y && yum upgrade -y \
    && yum install sudo langpacks-zh_CN.noarch -y \
    && cat /tmp/xaa /tmp/xab /tmp/xac /tmp/xad > /tmp/jdk-16.0.2_linux-x64_bin.rpm \
    && rpm -ivh /tmp/jdk-16.0.2_linux-x64_bin.rpm \
    && rm /tmp/jdk-16.0.2_linux-x64_bin.rpm \
    && chmod 777 /cobaltstrike/teamserver

ENV server_ip 127.0.0.1
ENV server_port 33009
ENV aliasname "cloud.tencent.com"
ENV dname "CN=cloud.tencent.com,  OU=Tencent Technology (Shenzhen) Company Limited, O=Tencent Technology (Shenzhen) Company Limited, L=Shenzhen, S=Guangdong Province, C=CN"
ENV LANG zh_CN.utf8
ENV TZ Asia/Shanghai

STOPSIGNAL SIGWINCH

EXPOSE 50050 80 443 33009
CMD ["/cobaltstrike/teamserver"]
