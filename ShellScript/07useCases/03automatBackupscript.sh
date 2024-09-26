#!/bin/bash
backup_dir="/mnt/c/CloudComputing/Code/Linux/ShellScript/07useCases"
source_dir="/mnt/c/CloudComputing/Code/Linux/ShellScript/07useCases/backup"
timestamp=$(date +"%Y%m%d%H%M%S")
zip -r myzip.zip $backup_dir 
mv myzip.zip myzip.zip_$timestamp
mkdir -p $source_dir

mv myzip.zip_$timestamp $source_dir