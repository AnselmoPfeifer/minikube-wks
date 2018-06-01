#!/usr/bin/env bash
set -x
TAG_NAME='minikube-wks'
IMAGE_ID=$(aws ec2 describe-images --filters "Name=tag:Name,Values=${TAG_NAME}")

echo ${IMAGE_ID}

