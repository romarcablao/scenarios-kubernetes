#!/bin/bash

have_01=$(kubectl -n default get svc spcloud-svc -o jsonpath='{.spec.type}')
want_01="NodePort"

if [ "$have_01" != "$want_01" ]; then
  exit 1
fi

have_02=$(kubectl -n default get deploy spcloud -ojsonpath='{.spec.template.spec.containers[0].image}')
want_02="httpd"

if [ "$have_02" != "$want_02" ]; then
  exit 1
fi

have_02=$(kubectl -n default get deploy spcloud -ojsonpath='{.status.readyReplicas}')
want_02="1"

if [ "$have_02" != "$want_02" ]; then
  exit 1
fi



