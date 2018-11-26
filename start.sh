#!/bin/bash
jarLoc=/home/nikhil/longlive
javaHome=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.161-2.b14.el7.x86_64/jre
ur=$jarLoc/unitResult.out
pid=`pgrep -f LongLive`
function eo {
        /bin/echo $1  >> $ur 2>&1;
        /bin/echo $1 ;
 }
/bin/echo -e "`date` \n " >  $ur 2>&1;
if [ $pid ]; then
        eo "`date` process already exist with $pid "
else
        eo "`date` starting longlive jar process";
        /bin/nohup $javaHome/bin/java -jar $jarLoc/LongLive.jar >> $ur  2>&1 &
        pid=`pgrep -f LongLive`;
        eo "`date` process is: $pid";
fi
eo "`date` completed start.sh for longlive jar"
exit 0;
