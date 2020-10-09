#!/bin/bash
ROLENAME=CustomRoleSSMCreateImageASG

aws iam create-role --role-name ${ROLENAME} --assume-role-policy-document file://01-createrole.json

aws iam put-role-policy --role-name ${ROLENAME} --policy-name InlineAutomationPassRole --policy-document file://01-InlineAutomationPassRole.json

aws iam attach-role-policy --role-name ${ROLENAME} --policy-arn arn:aws:iam::aws:policy/service-role/AmazonSSMAutomationRole

exit 0