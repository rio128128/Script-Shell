#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
cur_dir=$(pwd)

# Check if the script is being run as root
if [ "$(id -u)" != "0" ]; then
    echo -e "${red}错误：${plain} 必须使用root用户运行此脚本! \n"
    exit 1
fi

# Create the log file if it doesn't exist
if [ ! -f "/root/Oracle_OneKey_Active.log" ]; then
    echo "日志文件不存在，开始创建"
    touch /root/Oracle_OneKey_Active.log
fi

# Loop to download the file
while true; do
    # Check if the folder exists
    if [ ! -d "/root/anti-recycling/" ]; then
        echo -e "${green} 文件夹不存在,自动创建 ${plain}"
        mkdir /root/anti-recycling
    fi

    # Check if the file exists and remove it if it does
    if [ -f /root/anti-recycling/100mb.test ]; then
        echo -e "${green} 自动清除上次残留 ${plain}"
        rm -f /root/anti-recycling/100mb.test
    fi

    # Download the file
    time=$(date "+%Y-%m-%d %H:%M:%S")
    echo "${time} Start Download " >> /root/Oracle_OneKey_Active.log
    wget --limit-rate=8M http://speedtest.fremont.linode.com/100MB-fremont.bin -O /root/anti-recycling/100mb.test

    # Wait for 2.8 minutes before repeating
    echo -e "${green} 下载完成，等待168S(2.8Min)继续运行 ${plain}"
    time=$(date "+%Y-%m-%d %H:%M:%S")
    echo "${time} start wait " >> /root/Oracle_OneKey_Active.log
    sleep 168
    time=$(date "+%Y-%m-%d %H:%M:%S")
    echo "${time} ==================== " >> /root/Oracle_OneKey_Active.log
done
