#!/bin/sh
# ----------------------------------------------------------------------------
# fakes3 start script
# ----------------------------------------------------------------------------
set -e
echo "starting fakes3 with...."
echo /usr/bin/fakes3 -p $S3_PORT -r /var/data/fakes3
/usr/bin/fakes3 -p $S3_PORT -r /var/data/fakes3

