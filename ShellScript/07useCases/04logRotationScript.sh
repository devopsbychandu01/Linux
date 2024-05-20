#!/bin/bash
log_file="/mnt/c/CloudComputing/Code/Linux/ShellScript/07useCases/01pingsite.sh"
max_size=1000000 # 1MB
if [ $(wc -c < "$log_file") -gt $max_size ]; then
    mv "$log_file" "$log_file.old"
    touch "$log_file"
fi