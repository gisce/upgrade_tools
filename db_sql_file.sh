#!/bin/sh
for DBNAME in `psql -ltA | grep '|erp|' | cut -d '|' -f 1`; do
  echo "Executing in $DBNAME" && \
  psql $DBNAME < $1 && \
  echo "$DBNAME done."
done