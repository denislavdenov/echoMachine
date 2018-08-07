#!/usr/bin/env bash

OUTPUT=`bash hello.sh atanas`

if [ $? -ne 0 ]; then
  echo something went wrong
fi

if [ "${OUTPUT}" == "atanas" ]; then
  echo all good!
else
  echo "err: expected atanas got ${OUTPUT}"
  exit 1
fi

