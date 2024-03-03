#!/bin/bash

GROUPID="com.mycompany.app"
ARTIFACTID="my-app"
VERSION="0.0.1-SNAPSHOT"
URL="http://localhost:8081/repository/maven-snapshots"
FILE="target/my-app-0.0.1-SNAPSHOT-zip.zip"

mvn deploy:deploy-file \
  -Dmaven.main.skip=true \
  -Dmaven.test.skip=true \
  -DgroupId=$GROUPID \
  -DartifactId=$ARTIFACTID \
  -Dversion=$VERSION \
  -DgeneratePom=false \
  -Dpackaging=zip \
  -DrepositoryId=nexus \
  -Durl=$URL \
  -Dfile=$FILE \
  -s settings.xml \
