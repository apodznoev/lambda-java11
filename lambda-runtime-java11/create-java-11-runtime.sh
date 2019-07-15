#!/usr/bin/env bash
jlink --module-path ./libs:$JAVA_HOME/jmods \
   --add-modules  de.avpod.aws.lambda.runtime,java.xml \
   --output ./lambda-layer/dist \
   --launcher bootstrap=de.avpod.aws.lambda.runtime/de.avpod.aws.lambda.runtime.LambdaBootstrap \
   --compress 2 --no-header-files --no-man-pages --strip-debug

touch ./lambda-layer/bootstrap
echo "#!/bin/sh" >> ./lambda-layer/bootstrap
echo "/opt/dist/bin/bootstrap" >> ./lambda-layer/bootstrap
chmod +x ./lambda-layer/bootstrap