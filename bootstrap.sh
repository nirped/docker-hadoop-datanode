#!/bin/sh

confd -log-level="debug" -onetime -backend env 

if [ -e "/tmp/.EMPTY" ]
then
  rm -rf /var/hadoop/data/datanode/*
  rm /tmp/.EMPTY
fi

exec hdfs datanode
