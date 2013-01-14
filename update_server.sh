#!/bin/sh
cd /home/erp/src/erp/server/bin
for SCONF in `ls -1 /home/erp/conf`; do
  echo "Updating $CONF..." && \
  ./openerp-server.py --config=/home/erp/conf/$CONF --price_accuracy=6 --update=all --stop-after-init && \
  echo "******* $CONF Done ********" &
done