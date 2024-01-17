#!/bin/bash
find /home/vagrant/*.tar.gz -ctime +7 -type f -exec rm {} \;