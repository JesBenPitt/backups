#!/bin/bash
find $HOME/backups/backup_*_dif.tar.gz -ctime +180 -type f -exec rm {} \;
