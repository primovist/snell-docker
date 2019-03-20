食用方法：

```
docker run -d [--env PORT=SERVER_PORT] [--env PSK=PSK_KEYS] [--env OBFS=tls] -p PORT:PORT -p PORT:PORT/udp --name snell-server [-v CONFIG_DIR:/etc/snell/] --restart=always primovist/snell-docker
```


其中：

SERVER_PORT为端口自定义端口CONFIG为自定义配置文件位置

PSK_KEYS为自定义PSK

CONFIG_DIR为自定义配置文件目录

“OBFS=”后可改为http

例如：

可以运行
```
docker run -d --env PORT=12543 --env PSK=dFDL0H4NFMOieRyeb6Ly59EJUwrCiEg --env OBFS=tls -p 12543:12543 -p 12543:12543/udp --name snell-server -v /etc/snell/:/etc/snell/ --restart=always primovist/snell-docker
```

其中：

端为12543

PSK为dFDL0H4NFMOieRyeb6Ly59EJUwrCiEg

配置文件目录为/etc/snell/

OBFS为tls
