#!/bin/bash
find $HOME/backups/*.tar.gz -cmin +30 -type f -exec rm {} \;