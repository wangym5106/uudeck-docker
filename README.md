# uudeck-docker
在 Linux 下使用网易 UU 加速器的 Steam Deck 插件为本机游戏加速。

启动加速器：
```
docker build -t uudeck .
docker create --name uudeck --network host --privileged uudeck
docker start uudeck
```

在手机上下载 [UU主机加速](https://uu.163.com/console/) 配对进行控制。

导出 uuplugin_uuid:
```
docker exec uudeck cat /home/deck/uu/.uuplugin_uuid
```
