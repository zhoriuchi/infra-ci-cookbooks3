#!/bin/bash

set -e

if [[ ${CIRCLE_BRANCH} == deployment/* ]] ;
then
   echo "skipping CI for a deployment branch: ${CIRCLE_BRANCH}"
   exit 0
fi

bundle exec knife solo prepare root@webapp
bundle exec knife solo cook root@webapp
bundle exec knife solo prepare root@logapp
bundle exec knife solo cook root@logapp
bundle exec rake spec:webapp
bundle exec rake spec:logapp
