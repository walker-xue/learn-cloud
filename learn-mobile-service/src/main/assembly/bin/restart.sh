#!/usr/bin/env bash
JAR_FILE_NAME="donkey-cloud-wechat.jar"

findproc() {
        PID=`ps aux | grep $JAR_FILE_NAME | grep "java" | grep -v "$$" | grep -v grep | awk '{ print $2 }'`
}

findproc;

echo 'find process id : '$PID

for i in $PID
do
   /bin/kill -9 $PID
done

cd `dirname $0`
cd ..
DEPLOY_DIR=`pwd`
LOCATION_IP=`ifconfig |grep "inet ${cloud.address.netmask}"|awk '{print $2}'`

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
    nohup $JAVA -jar $DEPLOY_DIR/lib/$JAR_FILE_NAME  --server.address=$LOCATION_IP  > $DEPLOY_DIR/logs/start.out 2>&1 &
    echo 'Job Server has been started successfully.'
    echo 'You can see more details in logs/*.'
else
    echo 'Java version not support, must be 1.8 or 1.8+.'
fi
