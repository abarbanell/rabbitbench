#!/bin/sh

# set environment

source ./env.sh

# iterate through scnearios

for sc in `ls -d ${SCENARIO_DIR_PREFIX}*`
do
	echo "scenario $sc found"
	ls -l $sc
	cp $sc/spec.js $TOOL_DIR/$CLIENT_DIR
	(cd $TOOL_DIR/$CLIENT_DIR ; ./runjava.sh com.rabbitmq.examples.PerfTestMulti spec.js result.js)
	cp $TOOL_DIR/$CLIENT_DIR/result.js $sc
	ls -l $sc
done


# AMQP_URI="amqp://mq:mq@rpi03" 


# cd $TOOL_DIR
# ./runjava.sh com.rabbitmq.examples.PerfTest --uri $AMQP_URI -a


