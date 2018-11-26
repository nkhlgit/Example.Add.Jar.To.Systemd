#!/bin/bash
jarLoc=/home/nikhil/longlive
ur=$jarLoc/unitResult.out
pid=`pgrep -f LongLive`

function eo {
        /bin/echo $1  >> $ur 2>&1;
        /bin/echo $1 ;
 }

eo "`date` starting stop.sh for longlive jar"
if [ $pid ]; then
        /bin/kill $pid
        eo "`date` terminated longlive $pid "
else
        eo "`date` no longlive running to stop";
fi
eo "`date` completed stop.sh for longlive.jar"
exit 0;
