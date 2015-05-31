#!/bin/sh

echo check java version
which java 
if [ $? = 0 ]  
then java -version
else echo please install java first; exit 1
fi



# set environment

CLIENT_DISTRIBUTION_URL="https://www.rabbitmq.com/releases/rabbitmq-java-client/v3.5.3/rabbitmq-java-client-bin-3.5.3.tar.gz"
CLIENT_DISTRIBUTION_TAR="rabbitmq-java-client-bin-3.5.3.tar.gz"
CLIENT_DISTRIBUTION_DIR="rabbitmq-java-client-bin-3.5.3"
TMP_DIR='./tools'

mkdir -p $TMP_DIR

cd $TMP_DIR
wget $CLIENT_DISTRIBUTION_URL
tar xvzof $CLIENT_DISTRIBUTION_TAR


# ----cut----

TOOL_DIR=$HOME/rabbitmq-java-client-bin-3.5.2
AMQP_URI="amqp://mq:mq@rpi03" 


cd $TOOL_DIR
# ./runjava.sh com.rabbitmq.examples.PerfTest --uri $AMQP_URI -a


