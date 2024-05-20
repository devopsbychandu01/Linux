#!/bin/bash
backup_file="/mnt/c/CloudComputing/Code/Linux/ShellScript/07useCases/02code.md"
expected_checksum="expected_checksum"
actual_checksum=$(md5sum "$backup_file" | awk '{print $1}')
if [ "$actual_checksum" == "$expected_checksum" ]; then
    echo "Backup integrity verified"
else
    echo "Backup integrity compromised"
fi