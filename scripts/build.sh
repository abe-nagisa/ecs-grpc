#! /bin/bash

SERVICE_NAME=$1

cd ./services/$SERVICE_NAME
docker build -t howto-grpc/$SERVICE_NAME .
docker tag howto-grpc/$SERVICE_NAME:latest $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/howto-grpc/$SERVICE_NAME:$CIRCLE_SHA1