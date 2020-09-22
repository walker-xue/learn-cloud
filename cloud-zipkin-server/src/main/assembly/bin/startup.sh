#!/usr/bin/env bash
JAR_FILE_NAME="donkey-cloud-wechat.jar"

cd `dirname $0`
cd ..

DEPLOY_DIR=`pwd`

JAVA='java'
if [ -z `which java` ]; then
    if [ -z $JAVA_HOME ];
        then
            JAVA=$JAVA_HOME/bin/java
        else
            echo 'Cannot find java command and JAVA_HOME.'
    fi
fi

if [ ! -z `java -version 2>&1 | grep 'openjdk version' | awk '{print $3}' | egrep '1.[8-10].\d*'` ]; then
    nohup $JAVA -Xms512m -Xmx1024m -jar $DEPLOY_DIR/lib/$JAR_FILE_NAME --spring.config.location=$DEPLOY_DIR/config/application.yml  >/dev/null 2>&1 &
    echo 'Job Server has been started successfully.'
    echo 'You can see more details in logs/*.'
else
    echo 'Java version not support, must be 1.8 or 1.8+.'
fi
