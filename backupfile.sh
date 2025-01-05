#!/bin/bash

<<NOTE
This script takes backup of any destination path given in an argument
./backupfile.sh /home/ubuntu/scripts
NOTE

timestamp="$(date '+%Y-%m-%d_%H-%M-%S')"                                       #stores the date and time in the timestamp variable
backup_dir="${timestamp}_backup.zip"                                           #a new backup file is created each time, named with date_time_backup.zip

zip -r $backup_dir $1                                                          #takes backup of given destination path $1 and stores it in the variable $backup_dir

echo "Backup Complete"
