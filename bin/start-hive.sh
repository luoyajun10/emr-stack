#!/bin/bash
HIVE_HOME=/usr/lib/hive-current
if [ ! $# == 1 ]; then 
  echo "Usage: The parameter should be  'metastore' or 'hiveserver2'"
  exit 
fi

if [ "$1" == "metastore" ];then
  SERVICE_CLASS="org.apache.hadoop.hive.metastore.HiveMetaStore"
  TEXT="metastore"
elif [ "$1" == "hiveserver2" ];then
  SERVICE_CLASS="org.apache.hive.service.server.HiveServer2"
  TEXT="hiveserver2"
else
  echo "Usage: The parameter should be  'metastore' or 'hiveserver2'"
  exit
fi
 
pid=`ps ax | grep -i $SERVICE_CLASS | grep java | grep -v grep | awk '{print $1}'`
if [ -z "$pid" ];then
  nohup $HIVE_HOME/bin/hive --service $TEXT >> /var/log/hive/$TEXT.log 2>&1 &
else
  echo "service $TEXT is already running"
fi
