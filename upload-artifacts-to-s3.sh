#!/usr/bin/env bash
aws s3 cp ./lambda-runtime-java11/build/lambda-layer.zip s3://avpod/lambda_sources/layers/java11/lambda-layer.zip
aws s3 cp ./build/libs/ s3://avpod/lambda_sources/java11/ --include "*.jar" --recursive
