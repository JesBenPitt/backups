#!/bin/bash
find $HOME/backups/backup_*_dif.tar.gz -ctime +4320 -type f -exec rm {} \;