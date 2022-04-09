#!/bin/bash
# This bash script enables codebuild to apply a Kubernetes manifest to the EKS cluster by adding the codebuild role
# to the configmap/aws-auth.
# $1 - script argument is the AWS Account ID
kubectl get configmap aws-auth -o yaml -n kube-system
ROLE="    - rolearn: arn:aws:iam::$1:role/eks-codebuild-kubectl-role\n      username: build\n      groups:\n        - system:masters"
kubectl get -n kube-system configmap/aws-auth -o yaml | awk "/mapRoles: \|/{print;print \"$ROLE\";next}1" > /tmp/aws-auth-patch.yml
kubectl patch configmap/aws-auth -n kube-system --patch "$(cat /tmp/aws-auth-patch.yml)"
kubectl get configmap aws-auth -o yaml -n kube-system