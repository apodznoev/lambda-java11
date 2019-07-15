#!/usr/bin/env bash
aws lambda delete-function --function-name myTestLambdaJava11
aws lambda create-function \
 --function-name myTestLambdaJava11 \
 --role arn:aws:iam::722235405407:role/service-role/avpodLambdaRole \
 --handler de.avpod.aws.lambda.java11.LambdaHandler::handleRequest \
 --runtime provided \
 --layers arn:aws:lambda:eu-central-1:722235405407:layer:Java11Layer:3  \
 --code S3Bucket=avpod,S3Key=lambda_sources/java11/lambda-java11-1.0-SNAPSHOT.jar \
 --timeout 10