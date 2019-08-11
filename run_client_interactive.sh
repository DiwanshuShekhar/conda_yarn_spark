#!/bin/bash
export HADOOP_CONF_DIR=/etc/hadoop/conf
PYSPARK_DRIVER_PYTHON=`which python` \
PYSPARK_PYTHON=./environment/bin/python \
pyspark \
--conf spark.yarn.appMasterEnv.PYSPARK_PYTHON=./environment/bin/python \
--conf spark.yarn.dist.archives=environment.tar.gz#environment \
--master yarn \
--deploy-mode client 
