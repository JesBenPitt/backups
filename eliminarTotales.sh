#!/bin/bash
find $HOME/backups/backup_*_total.tar.gz -ctime +547 -type f -exec rm {} \;