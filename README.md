经过一段时间的实践发现，不跑网络也不回收，随意只要跑CPU和内存 经过一段时间的实践发现，不跑网络也不回收，随意只要跑CPU和内存 经过一段时间的实践发现，不跑网络也不回收，随意只要跑CPU和内存

将FuckNetWork.sh 下载源替换为

http://speedtest.fremont.linode.com/100MB-fremont.bin
下载间隔修改为1分钟一次

执行命令
cd /root && wget -qO FuckNetWork1.sh https://raw.githubusercontent.com/rio128128/Script-Shell/main/FuckNetWork1.sh && chmod +x FuckNetWork1.sh && nohup bash /root/FuckNetWork1.sh > /dev/null 2>&1 &

删除旧版本残留文件
sudo rm -f /root/nohup.out && rm -f /root/Oracle_OneKey_Active.log && rm -f /root/anti-recycling/vultr.com.1000MB.bin && rm -f /root/anti-recycling/vultr.com.1000MB.bin.1


