#!/bin/bash

if kubectl get -n dev-service1 pod happypanda; then exit 1; fi
