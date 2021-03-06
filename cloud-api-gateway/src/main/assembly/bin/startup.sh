#!/usr/bin/env bash
JAR_FILE_NAME="${project.artifactId}.jar"

findproc() {
        PID=`ps aux | grep $JAR_FILE_NAME | grep "java" | grep -v "$$" | grep -v grep | awk '{ print $2 }'`
}

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

if [ ! -z `java -version 2>&1 | grep 'openjdk version' | awk '{print $3}' | sed 's/\"//g' | grep '^[8,14].\d*'` ]; then
    nohup $JAVA -jar $DEPLOY_DIR/lib/$JAR_FILE_NAME >/dev/null 2>&1 &
    findproc;
    echo '${project.artifactId} Server has been started successfully. process id : '$PID
    echo 'You can see more details in logs/*.'
else
    echo 'Java version not support, must be 1.8 or 1.8+.'
fi
