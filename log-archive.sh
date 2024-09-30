#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Give a folder path to store the logs"
    exit 1
fi

tar -czvf "$1/logs_archive_$(date +'%Y%m%d_%H%M%S').tar.gz" /var/log .

