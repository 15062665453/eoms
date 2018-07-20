#!/bin/bash
source /etc/profile
bin=`dirname "${BASH_SOURCE-$0}"`
PROGRAM_PATH=`cd "$bin";cd ..;pwd`
PROGRAM_NAME="alarm-emos-0.0.1.jar"
CURRENT_PATH=`pwd`

java -jar ${PROGRAM_NAME}
