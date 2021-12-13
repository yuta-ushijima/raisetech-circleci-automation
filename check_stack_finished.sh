aws cloudformation update-stack --stack-name sampleStack --region ap-northeast-1 --template-body file://sample_stack.yml
RESULT="$?"
if [ "$RESULT" = "254" ]; then
  exit 0
else
  aws cloudformation wait stack-update-complete --stack-name sampleStack
fi