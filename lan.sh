#!/bin/bash
rsync -a -e "ssh -p 22 -i $1" $HOME/backups/backup_*.tar.gz vagrant@192.168.120.2:$HOME/backups/
