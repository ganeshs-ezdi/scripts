#! /bin/bash

URL=$1
DIRECTORY=`basename $URL .git`
git clone $1
cd $DIRECTORY
mvn clean && mvn package && mvn spring-boot:run

