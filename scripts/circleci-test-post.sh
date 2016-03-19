#!/bin/bash

set -e

if [[ ${CIRCLE_BRANCH} == deployment/* ]] ;
then
   echo "skipping CI for a deployment branch: ${CIRCLE_BRANCH}"
   exit 0
fi

#terraform plan -destroy 
#terraform destroy -force 
