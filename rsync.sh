#!/bin/bash
#
# Author : Jonathan Sanfilippo
# Date: Jun 2023
# Version 1.0.0: rsync backup
#

checkSpace=$(df -h /path | awk '{print $4}')
data=$(date +'%H:%M')
dir1="/path/target"
dir2="/path/target"
dir3="/path/target"
dir4="/path/target"
dirBak="/your/path/rsync-backup"

backup(){
rsync -zvrah  $dir1    $dirBak
rsync -zvrah  $dir2    $dirBak
rsync -zvrah  $dir3    $dirBak
rsync -zvrah  $dir4    $dirBak
notify-send   "rsync" "Backup done at $data. Space $checkSpace" -u normal
}


while true; do
  backup
  sleep 3600
done
