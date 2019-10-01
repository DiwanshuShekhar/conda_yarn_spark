#!/bin/bash
export HADOOP_CONF_DIR=/etc/hadoop/conf
export SPARK_HOME=/home/guest/a76295/.conda/envs/condasparkyarn/lib/python3.5/site-packages/pyspark
export PYSPARK_DRIVER_PYTHON=`which jupyter`
export PYSPARK_DRIVER_PYTHON_OPTS='notebook --ip=10.241.2.22'
PYSPARK_PYTHON=./environment/bin/python \
pyspark \
--conf spark.yarn.appMasterEnv.PYSPARK_PYTHON=./environment/bin/python \
--conf spark.yarn.dist.archives=environment.tar.gz#environment \
--conf spark.yarn.dist.files=localfile.py \
--master yarn \
--deploy-mode client 
