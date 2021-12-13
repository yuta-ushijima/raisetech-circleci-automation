if [`aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE | jq '.StackSummaries[].StackName' | grep 'sampleStack'`]; then
  echo "export STACK_EXIST_FLAG='true'" >> $BASH_ENV
else
  echo "export STACK_EXIST_FLAG='false'" >> $BASH_ENV
fi
echo "${STACK_EXIST_FLAG}"