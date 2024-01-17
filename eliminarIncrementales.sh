#!/bin/bash
find $HOME/backups/backup_*_inc.tar.gz -ctime +180 -type f -exec rm {} \;