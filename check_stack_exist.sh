#!/bin/bash

if [ `aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE | jq '.StackSummaries[].StackName' | grep 'sampleStack'` ]; then
  stack_check: true
else
  stack_check: false
fi
echo stack_check
