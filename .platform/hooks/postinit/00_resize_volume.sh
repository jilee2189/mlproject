#!/bin/bash
set -xe

# Resize the root volume
sudo growpart /dev/xvda 1
sudo resize2fs /dev/xvda1

# Log output
df -h > /var/log/volume_check.log