#!/bin/bash

set -e

if [[ ${CIRCLE_BRANCH} == deployment/* ]] ;
then
   echo "skipping CI for a deployment branch: ${CIRCLE_BRANCH}"
   exit 0
fi

terraform plan
terraform apply
cp /etc/hosts .
sudo bash -c "cat hosts /tmp/hosts.txt | tee /etc/hosts"
