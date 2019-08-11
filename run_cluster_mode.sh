#!/bin/bash
export HADOOP_CONF_DIR=/etc/hadoop/conf
spark-submit \
--conf spark.yarn.appMasterEnv.PYSPARK_PYTHON=./environment/bin/python \
--conf spark.yarn.dist.archives=environment.tar.gz#environment \
--master yarn \
--deploy-mode cluster \
script.py
