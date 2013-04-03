#!/bin/sh
VERSION="2.27"
for DBNAME in `psql -ltA | grep '|erp|' | cut -d '|' -f 1`; do
  echo "Bziping $DBNAME" && \
  bzip2 "/home/erp/var/backups/${DBNAME}/${DBNAME}_pre_${VERSION}.sql" && \
  echo "$DBNAME backup done." &
done