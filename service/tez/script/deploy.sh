#!/bin/bash

# upload tez tarball to HDFS
hdfs dfs -mkdir /tez
hdfs dfs -put /usr/lib/tez-current/share/tez.tar.gz /tez