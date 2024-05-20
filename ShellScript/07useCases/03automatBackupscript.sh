#!/bin/bash
backup_dir="/mnt/c/CloudComputing/Code/Linux/ShellScript/07useCases"
source_dir="/mnt/c/CloudComputing/Code/Linux/ShellScript/07useCases/backup"
timestamp=$(date +"%Y%m%d%H%M%S")
tar -czf $backup_dir_$timestamp.tar.gz $source_dir