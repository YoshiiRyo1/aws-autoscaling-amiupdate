#!/bin/bash
ROLENAME=Automation-UpdateAsg-role

aws iam create-role --role-name ${ROLENAME} --assume-role-policy-document file://02-createlambdarole.json

aws iam put-role-policy --role-name ${ROLENAME} --policy-name InlineAutomation-UpdateAsg --policy-document file://02-InlineAutomation-UpdateAsg.json


exit 0