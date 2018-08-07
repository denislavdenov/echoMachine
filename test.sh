#!/usr/bin/env bash

for u in atanas simple; do
  OUTPUT=`bash hello.sh ${u}`

  if [ $? -ne 0 ]; then
    echo something went wrong
  fi

  # test 1 make sure arg is in output
  if [[ "${OUTPUT}" =~ "atanas" ]] || [[ "${OUTPUT}" =~ "simple" ]]; then
    echo all good!
  else
    echo "err: expected string with atanas but got ${OUTPUT}"
    exit 1
  fi

  # test 2 make sure output is nice
  if [[ "${OUTPUT}" =~ "nice" ]]; then
    echo all good!
  else
    echo "err: expected string with nice but got ${OUTPUT}"
    exit 1
  fi
done
