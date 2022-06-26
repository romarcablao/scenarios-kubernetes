#!/bin/bash

if kubectl get ns | grep cloudnative; then exit 1; fi
if kubectl -n cloudnative get pod --selector=app=jenkins --selector=company=sp; then exit 1; fi
if kubectl -n cloudnative get pod jenkins -oyaml | grep "image: jenkins/jenkins:lts"; then exit 1; fi