# [CobaltStrike Update](https://github.com/xrsec/Docker-CobaltStrike)

## Introduce

> Cobatstrike is a platform wide multi-party cooperative post penetration attack framework based on Java. Cobaltstrike integrates the functions of port forwarding, port scanning, socket proxy, lifting rights, fishing, remote control Trojan horse and so on. The tool covers almost all the technical links needed in the apt attack chain.
> Use cloud functions to avoid traceability
> Using docker container is fast and convenient
> Use the python script I wrote to avoid privacy disclosure and malicious attacks

## Quickly create

> If you want to use cloud functions, you must use port 443 inside the container

```bash
docker run -it \
   --name cs \
   -e "passwd=e9PrFYtrPFD2U" \
   -e "server_ip=1.1.1.1" \
   -e "server_port=33009" \
   -e "dname=CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" \
   -p 443:443 \
   -p 443:443/udp \
   -p 80:80 \
   -p 33009:33009 \
   -p 33009:33009/udp \
   xrsec/cobaltstrike:4.4
   
# "tips server_ip=192.168.0.1" | "tips server_ip=86.66.66.66"
# -p 80:80 : http
# -p 443:443 : https
# -p 33009:33009 : admin
# -e "passwd=e9PrFYtrPFD2U" : your password
```



### Preview

![image-20210903211149434](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210903213218094679.png?w=1280&fmt=jpg)

![image-20210903211214909](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210903213224154378.png?w=1280&fmt=jpg)

### Tree

```ini
➜  cobaltstrike.server tree
.
├── Dockerfile
├── agscript.sh
├── build.log
├── c2lint.sh
├── cobaltstrike
├── cobaltstrike.jar
├── cs.profile
├── dingding.cna
├── jdk-16.0.2_linux-x64_bin.rpm?AuthParam=1630672044_704ffd18a70f3d1b46ccb8e27452e567
├── license.pdf
├── peclone.sh
├── teamserver
├── third-party
│   ├── README.winvnc.txt
│   ├── winvnc.x64.dll
│   └── winvnc.x86.dll
├── update.jar
├── zer0daylab.txt
└── zerodaylab.us.url

1 directory, 18 files
```

### MD5

```ini
MD5 (Dockerfile) = d6ea95541f3d83d966415d7be92cf6a2
MD5 (agscript.sh) = ac9308c56cf48012695ec52f990462c6
MD5 (build.log) = d41d8cd98f00b204e9800998ecf8427e
MD5 (c2lint.sh) = 63ce20f4ee0a8cb174ccd9c18b973ffa
MD5 (cobaltstrike) = 6cb0e504f022153da5a3600d747ae50e
MD5 (cobaltstrike.jar) = de21e4fc85c688c6e84b36adbb1b7ef1
MD5 (cs.profile) = 33c5dae3d3aa6559b8674167e8cd538a
MD5 (dingding.cna) = 7f29a0628cea4064a9c5e7fb024f961e
MD5 (license.pdf) = 3bf4b1c7be0a273cb631e7611f3078d8
MD5 (peclone.sh) = 91aacf2ded132846e64d100b0efb1082
MD5 (teamserver) = 4c693c502844613926629205312c93fa
md5: third-party: Is a directory
MD5 (update.jar) = fc2a7eaf59a926790946a8ec8c2e7a92
MD5 (zer0daylab.txt) = 14391ede14cccd0a26358772a7ff885b
MD5 (zerodaylab.us.url) = 953a2d568bfbe1a55216e572d582efd3
```

Github : https://github.com/xrsec/Docker-CobaltStrike

Hub.docker : https://hub.docker.com/r/xrsec/cobaltstrike

## Thanks 

ZER0DAY LAB :https://zerodaylab.us/

> Note: if you think that there are some backdoors in this crack patch or those who reprint or delete the copyright, please do not use it!
>Any direct or indirect consequences and losses caused by the dissemination and use of the information provided in this article shall be borne by the user himself, and the author of the article shall not bear any responsibility for this.
> Xrsec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way
