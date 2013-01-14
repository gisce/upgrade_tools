#!/bin/sh
for DBNAME in `psql -ltA | grep '|erp|' | cut -d '|' -f 1`; do
  echo "Dumping $DBNAME" && \
  pg_dump $DBNAME > "/home/erp/var/backups/${DBNAME}/${DBNAME}_pre_2.24.sql" && \
  echo "Bziping $DBNAME" && \
  bzip2 "/home/erp/var/backups/${DBNAME}/${DBNAME}_pre_2.24.sql" && \
  echo "$DBNAME backup done." &
done