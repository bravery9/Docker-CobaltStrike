# CobaltStrike4.3 Docker with Mac



![image-20210419004608801](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210423002501041137.png?w=1280&fmt=jpg)

![image-20210419004622339](https://rmt.ladydaily.com/fetch/ZYGG/storage/20210423002505946016.png?w=1280&fmt=jpg)

## Make

Amd64

```bash
docker run -it \
	--name cs \
	-e passwd="e9PrFYtrPFD2U" \
	-e server_ip="192.168.1.88" \
	-e server_port=33002 \
	-e aliasname="Bing Wallpaper" \
	-e dname="CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" \
	-p 33002:33002 \
	-p 443:443 \
	-p 80:80 \
	-p 33002:33002/udp \
	-p 443:443/udp \
	-p 80:80/udp \
	registry.cn-hangzhou.aliyuncs.com/xrsec/cobaltstrike:4.3
```



```bash
docker run -it \
	--name cs \
	-e passwd="e9PrFYtrPFD2U" \
	-e server_ip="192.168.1.88" \
	-e server_port=33002 \
	-e aliasname="Bing Wallpaper" \
	-e dname="CN=www.microsoft.com,  OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" \
	-p 33002:33002 \
	-p 443:443 \
	-p 80:80 \
	-p 33002:33002/udp \
	-p 443:443/udp \
	-p 80:80/udp \
	registry.cn-hangzhou.aliyuncs.com/xrsec/cobaltstrike:Arm-4.3
```



## Tree

```ini
➜  cs server tree   
.
├── Dockerfile
└── cobaltstrike
    ├── Java\ SE\ -\ Downloads\ _\ Oracle\ Technology\ Network\ _\ Oracle.html.mht
    ├── cobaltstrike.auth
    ├── cobaltstrike.jar
    ├── hook.jar
    ├── icon.jpg
    ├── license.pdf
    ├── readme.txt
    ├── teamserver
    └── third-party
        ├── README.winvnc.txt
        ├── winvnc.x64.dll
        └── winvnc.x86.dll

2 directories, 12 files
```

## Md5

```ini
# Arm
814eea186ff7b7d54c57924489ea78e9  cobaltstrike.auth
32cd41edf0810c5b5f498edf4731cc6d  cobaltstrike.jar
cd3c6d07bf1002a46fb2420369298c7b  hook.jar
3e0f7384cd692f647fc143d41c6c2d7c  icon.jpg
601cc3e186bd6e18b06c8a807d530b47  license.pdf
d4bf6bc69c744b4d4d550c1cedfc06f2  readme.txt
d376f709eae6977b22a71ce5e3fed3a0  teamserver
a51c46331ab7e9cd2ab9f35eb7f94a2f  Java SE - Downloads _ Oracle Technology Network _ Oracle.html.mht
ce44456545c3f6695f017eeca535bc0d  README.winvnc.txt
bc9fd6c5621c3fa5a16489db19746112  winvnc.x64.dll
719a93419dd5123b52961a076d283f21  winvnc.x86.dll
79d7ce73e8a4d2dd6ad4579b82b3db15  Dockerfile
```

[blog](https://blog.zygd.site/CobaltStrike4.3%20Docker%20with%20Mac.html)

