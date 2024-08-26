# FuckNetWork.sh脚本使用说明

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

下载源在FuckNetWork.sh里替换：例如以下源
http://speedtest.fremont.linode.com/100MB-fremont.bin

执行命令（下载间隔为60s/100mb）

```sh
cd /root && wget -qO FuckNetWork.sh https://raw.githubusercontent.com/rio128128/Script-Shell/main/FuckNetWork.sh && chmod +x FuckNetWork.sh && nohup bash /root/FuckNetWork.sh > /dev/null 2>&1 &
```
删除旧版本残留文件
```sh
sudo rm -f /root/nohup.out && rm -f /root/anti-recycling/Oracle_OneKey_Active.log && rm -f /root/anti-recycling/vultr.com.1000MB.bin && rm -f /root/anti-recycling/vultr.com.1000MB.bin.1
```
# clash_template2.yaml 说明
[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)
没啥用
