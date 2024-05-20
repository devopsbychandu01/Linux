#!/bin/bash
source_file="/mnt/c/CloudComputing/Code/Linux/ShellScript/07useCases/01pingsite.sh"
destination_server="devops@localhost:/opt"
scp "$source_file" "$destination_server"