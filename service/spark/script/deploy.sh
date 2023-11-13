#!/bin/bash

# todo: copy conf files

# spark on hive
cd /usr/lib/spark-current/conf
ln -s -f /usr/lib/hive-current/conf/hive-site.xml hive-site.xml
cd /usr/lib/spark-current/jars
ln -s -f /usr/lib/hive-current/lib/mysql-connector-java-5.1.31-bin.jar mysql-connector-java-5.1.31.jar
