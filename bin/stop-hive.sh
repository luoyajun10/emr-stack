#!/bin/bash
if [ ! $# == 1 ]; then 
  echo "Usage: The parameter should be 'metastore' or 'hiveserver2'"
  exit 
fi

if [ "$1" == "metastore" ];then
  SERVICE_CLASS="org.apache.hadoop.hive.metastore.HiveMetaStore"
  SERVICE_NAME="HiveMetaStore"
  LOG_FILE=/var/log/hive/metastore.log
elif [ "$1" == "hiveserver2" ];then
  SERVICE_CLASS="org.apache.hive.service.server.HiveServer2"
  SERVICE_NAME="HiveServer2"
  LOG_FILE=/var/log/hive/hiveserver2.log
else
  echo "Usage: The parameter should be 'metastore' or 'hiveserver2'"
  exit
fi 

pid=`ps ax | grep -i $SERVICE_CLASS | grep java | grep -v grep | awk '{print $1}'`
if [ -z "$pid" ];then
  echo "no $SERVICE_NAME to stop"
else
  echo $pid | xargs kill -SIGTERM
  echo "SHUTDOWN_MSG: Shutting down $SERVICE_NAME at `date +'%Y-%m-%d %H:%M:%S'`"  >> $LOG_FILE
fi
