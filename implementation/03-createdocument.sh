#!/bin/bash

aws ssm create-document \
  --content file://autoscaling-amiupdate.yaml \
  --name "CreateGoldenImageandupdateASG" \
  --document-type "Automation" \
  --document-format YAML \
  --region ap-northeast-1

exit 0
