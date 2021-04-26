# cobaltstrike docker

## 截图

![image-20210107002720284](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210107002856657516.png?w=1280&fmt=jpg)

![image-20210107003005105](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210107003007034838.png?w=1280&fmt=jpg)

![image-20210107003342603](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210107003344863878.png?w=1280&fmt=jpg)

![image-20210107003306028](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210107003310677767.png?w=1280&fmt=jpg)

![image-20210107003411305](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210107003413356874.png?w=1280&fmt=jpg)



> 那啥我建议你们 改改这些 
> dname="CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US"
> 还是那句话后门自测



## 拉取镜像

### Mac M1

```shell
docker run -it \
	--name cs \
	-e passwd="e9PrFYtrPFD2U" \
	-e server_ip="192.168.1.1" \
	-e server_port=33002 \
    -e aliasname="Bing Wallpaper" \
	-e dname="CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" \
	-p 33002:33002 \
	-p 443:443 \
	-p 80:80 \
	-p 33002:33002/udp \
	-p 443:443/udp \
	-p 80:80/udp \
	registry.cn-hangzhou.aliyuncs.com/xrsec/cobaltstrike:Arm-4.2
```

#### docker.io

```shell
docker run -it \
	--name cs \
	-e passwd="e9PrFYtrPFD2U" \
	-e server_ip="192.168.1.1" \
	-e server_port=33002 \
    -e aliasname="Bing Wallpaper" \
	-e dname="CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" \
	-p 33002:33002 \
	-p 443:443 \
	-p 80:80 \
	-p 33002:33002/udp \
	-p 443:443/udp \
	-p 80:80/udp \
	xrsec/cobaltstrike:Arm-4.2
```



### Inter x64

#### 阿里云

```shell
docker run -it \
	--name cs \
	-e passwd="e9PrFYtrPFD2U" \
	-e server_ip="192.168.1.1" \
	-e server_port=33002 \
    -e aliasname="Bing Wallpaper" \
	-e dname="CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" \
	-p 33002:33002 \
	-p 443:443 \
	-p 80:80 \
	-p 33002:33002/udp \
	-p 443:443/udp \
	-p 80:80/udp \
	registry.cn-hangzhou.aliyuncs.com/xrsec/cobaltstrike:4.2
```



#### docker.io

```shell
docker run -it \
	--name cs \
	-e passwd="e9PrFYtrPFD2U" \
	-e server_ip="192.168.1.1" \
	-e server_port=33002 \
    -e aliasname="Bing Wallpaper" \
	-e dname="CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" \
	-p 33002:33002 \
	-p 443:443 \
	-p 80:80 \
	-p 33002:33002/udp \
	-p 443:443/udp \
	-p 80:80/udp \
	xrsec/cobaltstrike:4.2
```

## dockerfile

```dockerfile
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

```



以下作废教程可供参考

## ~~拉取镜像~~

```shell
sudo docker pull registry.cn-hangzhou.aliyuncs.com/xrsec/cobaltstrike:4.2
```

## ~~启动镜像~~

```shell
docker run -it -d \
	--name cobaltstrike \
	-p 50050:50050 \
	-p 50051-50055:50051-50055 \
	registry.cn-hangzhou.aliyuncs.com/xrsec/cobaltstrike:4.2
```

## ~~进入终端~~

```shell
docker exec -it cobaltstrike /bin/bash
cd /root/CS/
rm cobaltstrike.store
```

### ~~重新生成证书~~

```shell
# 默认密码 LCYtmSqVmj4kJDa3aFQZ 注意有两个需要修改
# 其他数据看着改 
keytool -keystore ./cobaltstrike.store -storepass LCYtmSqVmj4kJDa3aFQZ -keypass LCYtmSqVmj4kJDa3aFQZ -genkey -keyalg RSA -alias BingWallPaper -dname "CN=Microsoft Bing, OU=UpdateTesting, O=BingUpdate, L=America, S=New York, C=Chinatown"
```

### ~~修改密码~~

```shell
# 重新开一个终端
# docker cp cobaltstrike 容器的 teamserver 到当前目录
docker cp cobaltstrike:/root/CS/teamserver .
```

~~需要修改这些~~

- ~~` -storepass LCYtmSqVmj4kJDa3aFQZ`~~
- ~~`-keypass LCYtmSqVmj4kJDa3aFQZ`~~
- ~~`keyStorePassword=LCYtmSqVmj4kJDa3aFQZ`~~
- ~~`TeamServer 192.168.0.78 LCYtmSqVmj4kJDa3aFQZ`~~
- ~~其他的你们看着改，记得要和上面重新生成证书的地方一致~~

```shell
if [ -e ./cobaltstrike.store ]; then
	print_info "Will use existing X509 certificate and keystore (for SSL)"
else
	print_info "Generating X509 certificate and keystore (for SSL)"
	keytool -keystore ./cobaltstrike.store -storepass LCYtmSqVmj4kJDa3aFQZ -keypass LCYtmSqVmj4kJDa3aFQZ -genkey -keyalg RSA -alias BingWallPaper -dname "CN=Microsoft Bing, OU=UpdateTesting, O=BingUpdate, L=America, S=New York, C=Chinatown"
fi

# start the team server.
java -XX:ParallelGCThreads=4 -Dcobaltstrike.server_port=50050 -Djavax.net.ssl.keyStore=./cobaltstrike.store -Djavax.net.ssl.keyStorePassword=LCYtmSqVmj4kJDa3aFQZ -server -XX:+AggressiveHeap -XX:+UseParallelGC -classpath ./cobaltstrike.jar server.TeamServer 192.168.0.78 LCYtmSqVmj4kJDa3aFQZ & $*
```

## ~~客户端~~

- ~~[软件包 ](https://www76.zippyshare.com/v/yH17WCFH/file.html) 有无后门，请君自测~~

- ~~[汉化包 ](https://pan.baidu.com/s/1tIViJrcCMHOSqUNhDOwCwg)  密码: gnbf~~

- ~~Windows~~

```shell
java -Dfile.encoding=UTF-8 -javaagent:CobaltStrikeCN.jar -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -jar cobaltstrike.jar
```

> ~~保存为 `cobaltstrike.bat`~~

- ~~Linux~~

```shell
java -Dfile.encoding=UTF-8 -javaagent:CobaltStrikeCN.jar -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -jar cobaltstrike.jar
```

> ~~保存为 `cobaltstrike.sh`~~
> ~~`chmod 777 cobaltstrike`~~

- ~~Mac~~

```shell
java -Dfile.encoding=UTF-8 -javaagent:CobaltStrikeCN.jar -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -jar cobaltstrike.jar
```

> ~~保存为 `cobaltstrike`~~
> ~~`chmod 777 cobaltstrike`~~

## ~~插件推荐~~

- ~~Bypass~~
- ~~Taowu~~ 

## ~~注意事项~~

1. ~~监听端口问题~~
   1. ~~如果是路由器转发端口 请 按照这种格式 443:xxx:443~~
   2. ~~docker 容器 443 docker 主机 xxx 路由器 443~~
2. ~~上线主机sleep设置为 0~~
3. ~~XXX~~

[blog](https://blog.zygd.site/cobaltstrike%20docker.html)