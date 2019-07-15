#!/usr/bin/env bash
aws cloudformation deploy --template-file ./src/main/resources/cloudfront.yaml --stack-name LambdaJava11 --tags Type=Bots --capabilities CAPABILITY_NAMED_IAM