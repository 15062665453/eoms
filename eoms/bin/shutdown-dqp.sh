#!/bin/bash
source /etc/profile
PROGRAM_NAME="alarm-emos-0.0.1.jar"
PROGRAM_USER=`whoami`

PID=`ps -ef | grep ${PROGRAM_NAME} | grep -v grep | grep ${PROGRAM_USER} |awk '{print $2}'`
if [ -n "$PID" ];
 then
   kill -15 $PID
   if [ $? ==  0 ];
   then
      echo 'Program stoped successfully.'
   else
      echo 'Program stoped fail.'
   fi
   exit

 else
   echo 'The program has no been running currently.please firstly start it'
fi
exit

