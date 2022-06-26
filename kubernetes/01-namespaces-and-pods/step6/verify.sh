#!/bin/bash

validate_k8s_ns=$(kubectl get ns | grep cloudnative | wc -l)
validate_k8s_pod=$(kubectl -n cloudnative get pod jenkins -oyaml | grep "image: jenkins/jenkins:lts" | wc -l)
validate_k8s_pod_label=$(kubectl -n cloudnative get pod --field-selector=status.phase=Running --selector=app=jenkins --selector=company=sp --no-headers | wc -l)

if [ $validate_k8s_ns -le 0 ]; then
  echo "Hint: Make sure have the required namespace created.."
fi

if [ $validate_k8s_pod -le 0 ]; then
  echo "Hint: Try checking which namespace your pod is running. Is it in 'Running' state?"
fi

if [ $validate_k8s_pod_label -le 0 ]; then
  echo "Hint: Hmmm... how 'bout the labels?"
fi