#!/bin/bash

validate_k8s_fix_me=$(kubectl get pod --field-selector=status.phase=Running --selector=run=fix-me --no-headers | wc -l)
validate_k8s_nginx=$(kubectl get pod --field-selector=status.phase=Running --no-headers | grep nginx | wc -l)
validate_k8s_nginx_service=$(kubectl get svc | grep nginx | wc -l)

if [ $validate_k8s_fix_me -le 0 ]; then
  echo "Hint: You can change the image nginx:latest"
  exit 1
fi

if [ $validate_k8s_nginx -le 0 ]; then
  exit 1
fi

if [ $validate_k8s_nginx_service -le 0 ]; then
  exit 1
fi