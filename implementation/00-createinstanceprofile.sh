#!/bin/bash

ROLENAME=EC2SSMRole

aws iam create-role --role-name ${ROLENAME} --assume-role-policy-document file://00-createinstanceprofile.json

aws iam attach-role-policy --role-name ${ROLENAME} --policy-arn arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore

exit 0