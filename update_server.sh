#!/bin/sh
cd /home/erp/src/erp/server/bin
for SCONF in `ls -1 /home/erp/conf | grep -v mongo`; do
  echo "Updating $SCONF..." && \
  ./openerp-server.py --config=/home/erp/conf/$SCONF --price_accuracy=6 --update=all --stop-after-init && \
  echo "******* $SCONF Done ********" &
done
