#!/usr/bin/env bash

set -e
input="$1"
msg=$(echo "$input"|xargs)
if [[ "$msg" =~ ^[0-9]+$ ]]; then
    dir=$(find . -maxdepth 1 -type d -name "${msg}-*"|head -n 1)
    if [ -n "$dir" ]; then
          echo "$dir"                    # 找到，输出目录名
    else
        echo "gg"
        exit 1
    fi
else
    echo "gg"
    exit 1
fi
