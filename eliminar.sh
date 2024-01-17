#!/bin/bash
find /home/vagrant/*.tar.gz -cmin +4 -type f -exec rm {} \;
