#! /bin/bash

# Deploy EKS cluster and EFS storage on AWS for Pangeo JupyterHub

#1) Create IAM user w/ adequate permissions for EKS cluster management - need to check on separate account! NOTE: probably have to run this as admin user
# https://github.com/weaveworks/eksctl/issues/204
#aws iam create-user --user-name circle-ci-deploy

#ACCOUNT=CHANGE_ME
#echo "Assigning inline policy to circle-ci-deploy..."
#sed -e "s/CHANGE_ACCOUNT_NUMBER/$ACCOUNT/g" ./templates/template-eksctl-permissions.json > eksctl-permissions.json
#aws iam create-policy --policy-name eksctl-permissions --policy-document file://eksctl-permissions.json
#aws iam attach-user-policy --policy-arn arn:aws:iam::$ACCOUNT:policy/eksctl-permissions --user-name circle-ci-deploy
#

#2) CUSTOMIZE configuration and permissions
#unset AWS_DEFAULT_PROFILE
#KEY=CHANGE_ME
#SECRET_KEY=CHANGE_ME
#aws configure set aws_access_key_id ${KEY} --profile circleci
#aws configure set aws_secret_access_key ${SECRET_KEY} --profile circleci

#REGION="ap-southeast-2"
#export AWS_DEFAULT_PROFILE=circleci
#aws configure set region ${REGION}
#aws configure set output json
