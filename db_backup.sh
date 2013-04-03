#!/bin/sh
VERSION="2.27"
for DBNAME in `psql -ltA | grep '|erp|' | cut -d '|' -f 1`; do
  echo "Dumping $DBNAME" && \
  mkdir -p /home/erp/var/backups/${DBNAME} && \
  pg_dump $DBNAME > "/home/erp/var/backups/${DBNAME}/${DBNAME}_pre_${VERSION}.sql" && \
  echo "$DBNAME backup done." &
done