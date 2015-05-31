#!/bin/sh

# set environment

source ./env.sh

# iterate through scnearios

for sc in `ls $SCENARIO_DIR`
do
	echo "scenario $sc found"
	ls -l $SCENARIO_DIR/$sc
	cp $SCENARIO_DIR/$sc/spec.js $TOOL_DIR/$CLIENT_DIR
	(cd $TOOL_DIR/$CLIENT_DIR ; ./runjava.sh com.rabbitmq.examples.PerfTestMulti spec.js result.js)
	cp $TOOL_DIR/$CLIENT_DIR/result.js $SCENARIO_DIR/$sc
	ls -l $SCENARIO_DIR/$sc
done


AMQP_URI="amqp://mq:mq@rpi03" 


cd $TOOL_DIR
# ./runjava.sh com.rabbitmq.examples.PerfTest --uri $AMQP_URI -a


