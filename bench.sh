#!/bin/sh

# set environment

TOOL_DIR=$HOME/rabbitmq-java-client-bin-3.5.2
AMQP_URI="amqp://mq:mq@rpi03" 


cd $TOOL_DIR
./runjava.sh com.rabbitmq.examples.PerfTest --uri $AMQP_URI -a


