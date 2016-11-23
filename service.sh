#!/bin/sh
# ----------------------------------------------------------------------------
# service file for container
# ----------------------------------------------------------------------------
echo "starting fakes3 with...."
echo /usr/bin/fakes3 -p $LINK_PORT -r /var/data/fakes3
/usr/bin/fakes3 -p $LINK_PORT -r /var/data/fakes3
