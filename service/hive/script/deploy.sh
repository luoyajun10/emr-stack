#!/bin/bash

# copy mysql connector jar to hive lib
cp -f /usr/lib/emr-current/auxlib/mysql-connector-java-5.1.31-bin.jar /usr/lib/hive-current/lib

# add tez-site.xml to hive conf directory
cd /etc/emr/hive-conf
ln -s -f /usr/lib/tez-current/conf/tez-site.xml tez-site.xml