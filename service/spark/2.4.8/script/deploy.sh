#!/bin/bash

# todo: copy conf files

# spark on hive
cp /usr/lib/hive-current/conf/hive-site.xml /usr/lib/spark-current/conf
sed -i 's;<value>tez<\/value>;<value>mr<\/value>;g' /usr/lib/spark-current/conf/hive-site.xml
cd /usr/lib/spark-current/jars
ln -s -f /usr/lib/hive-current/lib/mysql-connector-java-5.1.31-bin.jar mysql-connector-java-5.1.31.jar
