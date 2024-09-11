#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")

n=$1

#echo "ini adalah argument ke $n"

log_dir="/home/aris/dev-aris/bootcamp-dev-ops/sesi_4/tugas/tugas-b/var/log"

#find "$log_dir" -type f -name "*.log"

# Menemukan dan menghapus file yang lebih dari n hari
find "$log_dir" -type f -name "*.log" -mtime +$n -exec rm -f {} \;
echo "$TIMESTAMP - logs older than 2 days have been deleted"
echo "$TIMESTAMP - Logs older than 2 days have been deleted from /var/log/ ">>/home/aris/dev-aris/bootcamp-dev-ops/sesi_4/tugas/tugas-b/var/log/clean_daily.log


#echo "cron was already execute - $(date)" >> /home/aris/dev-aris/bootcamp-dev-ops/sesi_4/tugas/tugas-b/var/log/clean_daily.log
