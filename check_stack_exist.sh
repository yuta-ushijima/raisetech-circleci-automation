#!/bin/bash

if [ `aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE | jq '.StackSummaries[].StackName' | grep 'sampleStack'` ]; then
  STACK_CHECK=true
else
  STACK_CHECK=false
fi
echo $STACK_CHECK