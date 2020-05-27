#!/usr/bin/env bash

cd "$(dirname "${0}")" || exit 1
EXIT_CODE=0
set -x
aws cloudformation validate-template --template-body file://vpc.yaml > /dev/null || EXIT_CODE=$?
aws cloudformation validate-template --template-body file://ecs.yaml > /dev/null || EXIT_CODE=$?
exit ${EXIT_CODE}
