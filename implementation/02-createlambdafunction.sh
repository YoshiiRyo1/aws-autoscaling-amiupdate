#!/bin/bash

aws lambda create-function --function-name Automation-UpdateAsg \
  --runtime python3.7 \
  --role arn:aws:iam::<account-id>:role/Automation-UpdateAsg-role \
  --handler Automation-UpdateAsg.lambda_handler \
  --zip-file fileb://Automation-UpdateAsg.zip \
  --region ap-northeast-1

exit 0