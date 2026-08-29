#!/usr/bin/env bash

set -e
input="$1"
msg=$(echo "$input"|xargs)
if [[ "$msg" =~ ^[0-9]+$ ]]; then
    dir=$(find . -maxdepth 1 -type d -name "${msg}-*"|head -n 1)
    if [ -n "$dir" ]; then
          echo "$dir"                    # 找到，输出目录名
      else
          echo "错误: 找不到 ${msg}-* 目录" >&2
          exit 1
      fi
  else

else
    echo "gg"
    exit 1
f1
