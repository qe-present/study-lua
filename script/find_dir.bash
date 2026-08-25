#！usr/bin/bash

set -e
input="$1"
[[ "$input" =~ ^[0-9]$ ]] && input="0$input"
dir=$(find . -maxdepth 1 -type d -name "${input}-*"|head -n 1)
[[ -z "$dir"  ]] && { echo "gg";exit 1; } # -z 就是判断"字符串是不是空的" [[条件测试表达式]]
echo "$dir"
