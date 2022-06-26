#!/bin/bash

kubectl get ns | grep cloudnative
kubectl get pod --selector=app=jenkins --selector=company=sp
kubectl get po jenkins -oyaml | grep "image: jenkins/jenkins:lts"
