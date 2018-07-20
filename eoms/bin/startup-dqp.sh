#!/bin/bash
source /etc/profile
bin=`dirname "${BASH_SOURCE-$0}"`
PROGRAM_PATH=`cd "$bin";cd ..;pwd`
PROGRAM_NAME="alarm-emos-0.0.1.jar"
PROGRAM_USER=`whoami`
CURRENT_PATH=`pwd`

PID=`ps -ef | grep ${PROGRAM_NAME}| grep -v grep | grep ${PROGRAM_USER} |awk '{print $2}'`

if [ ! -n "$PID" ];
then
   if [ "${PROGRAM_PATH}" != "${CURRENT_PATH}" ];
   then
     cd ${PROGRAM_PATH}
   fi

   bin/dqp-daemons.sh  >/dev/null  2>&1 &

   if [ $? -eq 0 ];
    then
      echo 'Program started successfully.'
   else
      echo 'Program started fail.'
   fi
   exit

else
   echo 'The program is already running.please firstly shutdown it'
fi
exit

