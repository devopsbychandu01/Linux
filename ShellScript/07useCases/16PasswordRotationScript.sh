#!/bin/bash
user="azure"
new_password=$(openssl rand -base64 12)
echo "$user:$new_password" | chpasswd