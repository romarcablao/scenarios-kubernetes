#!/bin/bash
have=$(kubectl exec nginx -- ls /data/nginx/)
want="test.txt"

if [ "$have" != "$want" ]; then
  echo "done"
  exit 1
fi

echo "You should have ${have} you have ${want}"
# 
