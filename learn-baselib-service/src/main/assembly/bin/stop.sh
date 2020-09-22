#!/usr/bin/env bash
JAR_FILE_NAME="donkey-cloud-admin.jar"

findproc() {
        PID=`ps aux | grep $JAR_FILE_NAME | grep "java" | grep -v "$$" | grep -v grep | awk '{ print $2 }'`
}

findproc;

echo 'find process id : '$PID

for i in $PID
do
   /bin/kill -9 $PID
done