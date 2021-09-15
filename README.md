# [CobaltStrike Update](https://github.com/xrsec/Docker-CobaltStrike)

[![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/cobaltstrike?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/cobaltstrike) [![Docker Build File](https://img.shields.io/badge/Dockerfile-Github-da282a)](https://github.com/XRSec/Docker-CobaltStrike) ![Cobalt Strikee Version](https://img.shields.io/badge/CobaltStrike-4.4-da282a)

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
   -e "aliasname=Bing Wallpaper" \
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
Docker-CobaltStrike git:(master) ✗ tree
.
├── Dockerfile
├── README.md
├── cobaltstrike.client
│   ├── KIDSCRACKER.md
│   ├── agscript
│   ├── agscript.bat
│   ├── agscript.sh
│   ├── app.icns
│   ├── app.ico
│   ├── c2lint
│   ├── c2lint.bat
│   ├── c2lint.sh
│   ├── cobaltstrike
│   ├── cobaltstrike.exe
│   ├── cobaltstrike.jar
│   ├── cobaltstrike.start
│   ├── cobaltstrikecn.jar
│   ├── cs.profile
│   ├── dingding.cna
│   ├── kali-CobaltStrike-new.desktop
│   ├── license.pdf
│   ├── peclone
│   ├── peclone.bat
│   ├── peclone.sh
│   ├── teamserver
│   ├── third-party
│   │   ├── README.winvnc.txt
│   │   ├── winvnc.x64.dll
│   │   └── winvnc.x86.dll
│   ├── update.bat
│   └── update.jar
├── cobaltstrike.server
│   ├── Dockerfile
│   ├── agscript.sh
│   ├── c2lint.sh
│   ├── cobaltstrike
│   ├── cobaltstrike.jar
│   ├── cs.profile
│   ├── dingding.cna
│   ├── license.pdf
│   ├── peclone.sh
│   ├── teamserver
│   ├── third-party
│   │   ├── README.winvnc.txt
│   │   ├── winvnc.x64.dll
│   │   └── winvnc.x86.dll
│   └── update.jar
├── jdk-16.0.2_linux-x64_bin.7z.001
├── jdk-16.0.2_linux-x64_bin.7z.002
├── jdk-16.0.2_linux-x64_bin.7z.003
└── jdk-16.0.2_linux-x64_bin.7z.004

4 directories, 47 files
```

### MD5

```ini
➜  Docker-CobaltStrike git:(master) ✗ find ./ -type f -print0 | xargs -0 MD5
MD5 (Dockerfile) = d6ea95541f3d83d966415d7be92cf6a2
MD5 (xaa) = a76ce786568503d0ce05583ae23bc83b
MD5 (xab) = be28f33114b33634e4400e95effe4fe1
MD5 (xac) = 56823dd94fca7d115729f4f7d4987a67
MD5 (xad) = 310062853ad10b944ac544b0c7d5125c
MD5 (README.md) = 08b3781a7057590805a8d0fd02e72eec
MD5 (cobaltstrike.server/dingding.cna) = 7f29a0628cea4064a9c5e7fb024f961e
MD5 (cobaltstrike.server/cobaltstrike) = 6cb0e504f022153da5a3600d747ae50e
MD5 (cobaltstrike.server/.DS_Store) = ad7f2c92966ee8f91c32eb561739a7ab
MD5 (cobaltstrike.server/update.jar) = fc2a7eaf59a926790946a8ec8c2e7a92
MD5 (cobaltstrike.server/peclone.sh) = 91aacf2ded132846e64d100b0efb1082
MD5 (cobaltstrike.server/Dockerfile) = 93abab102015f310ac6c0ba59b5ca201
MD5 (cobaltstrike.server/agscript.sh) = ac9308c56cf48012695ec52f990462c6
MD5 (cobaltstrike.server/teamserver) = 4c693c502844613926629205312c93fa
MD5 (cobaltstrike.server/license.pdf) = 3bf4b1c7be0a273cb631e7611f3078d8
MD5 (cobaltstrike.server/c2lint.sh) = 63ce20f4ee0a8cb174ccd9c18b973ffa
MD5 (cobaltstrike.server/third-party/README.winvnc.txt) = ce44456545c3f6695f017eeca535bc0d
MD5 (cobaltstrike.server/third-party/winvnc.x64.dll) = e51265f5926c76fb23cd271a602201d2
MD5 (cobaltstrike.server/third-party/winvnc.x86.dll) = 0b29b836626c477639e23f59b18a4945
MD5 (cobaltstrike.server/cobaltstrike.jar) = c253bb692f4bef85741ee5709267dded
MD5 (cobaltstrike.server/cs.profile) = 33c5dae3d3aa6559b8674167e8cd538a
➜  Docker-CobaltStrike git:(master) ✗
```

## Thanks

https://www.upload.ee/files/13456591/Cobalt_Strike_4.4__August_04__2021_.7z.html

> Note: if you think that there are some backdoors in this crack patch or those who reprint or delete the copyright, please do not use it!
>Any direct or indirect consequences and losses caused by the dissemination and use of the information provided in this article shall be borne by the user himself, and the author of the article shall not bear any responsibility for this.
> Xrsec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way