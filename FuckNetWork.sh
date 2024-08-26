#!/bin/bash


log_file="download_log.txt"


urls=(
  "https://autopatchcn.yuanshen.com/client_app/download/pc_zip/20230804185703_R1La3H9xIH1hBiHJ/YuanShen_4.0.0.zip"
  "https://autopatchcn.yuanshen.com/client_app/download/pc_zip/20230804185703_R1La3H9xIH1hBiHJ/Audio_Chinese_4.0.0.zip"
  "https://autopatchcn.yuanshen.com/client_app/download/launcher/20240314153152_0AZRlFRox2kHeTKf/mihoyo/yuanshen_setup_20240313190827.exe"
)


start_time=$(date +"%Y-%m-%d %H:%M:%S")
echo "下载开始时间: $start_time" >> "$log_file"


for url in "${urls[@]}"; do
  echo "正在下载 $url..." >> "$log_file"


  size_bytes=$(curl -s -w "%{size_download}" -o /dev/null "$url")


  if [[ $size_bytes -eq 0 ]]; then
    echo "下载失败或文件为空 $url " >> "$log_file"
  else
    # 将文件大小从字节转换为GB并保留6位小数
    size_gb=$(awk "BEGIN {print $size_bytes / 1024 / 1024 / 1024}")

    echo "已下载 $url 文件大小: ${size_gb} GB" >> "$log_file"
  fi
done


end_time=$(date +"%Y-%m-%d %H:%M:%S")
echo "下载完成时间: $end_time" >> "$log_file"

echo "==============================================="
