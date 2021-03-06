Example.Add.Jar.To.Systemd
=======================

This is an example for a jar file created for infine while loop; and added to systemd  as service on Redhat/Centos.

The structure ``LongLivee`` package is like this: ::

  Example.Add.Jar.To.Systemd/
  |-- LongLive
  |       |-- META-INF
  |       |        |-- MANIFEST.MF     
  |       |-- com 
  |            |-- LongLive.java
  |-- start.sh
  |-- stop.sh
  |-- longlive.service
  |-- LICENSE
  `-- README.md

I perfomed the operation in: ::

  /home/nikhil/longlive

Compile class
-------------

For compile the main class for package, execute the follow command: ::

  javac com/LongLive/LongLive.java

This generate the ``Main.class`` file into ``LongLive`` directory.

Run class
---------

For run the main class for package, execute the follow command: ::

  java -cp . com.LongLive.LongLive

This show the ``Hi`` message.

Create a JAR file
-----------------

For pack the main class for package as a JAR file, execute the follow command: ::

  jar cvmf META-INF\MANIFEST.MF LongLive.jar com\LongLive\*.class 


Run a JAR file to test
----------------------

For run the JAR file packed, execute the follow command: ::

  java -jar LongLive.jar

This show the ``Hi count <0-99> <date> at /tmp/longLiveLog.out`` message. Afterwords kill the jar process with command: :: 

  pkill -f LongLive

start/stop script
-------------------
Place start.sh and stop.sh in ``/home/nikhil/longlive`` and set the permission: ::

  cd home/nikhil/longlive
  chmod +x start.sh
  chmod +x stop.sh
  
 start and stop script will log its event at ``/home/nikhil/longlive``

Add service in systemd:
-----------------------
create longlive.service file at: ::

  /etc/systemd/system/longlive.service

Execute commands:
To load the longlive.servive: ::

  systemctl daemon-reload
To start service: ::

  systemctl start longlive.service
To start service itself after reboot of os: ::

  systemctl enable longlive.service
To check the status: ::  
 
  systemctl status service
To check the process: ::

  pgrep -f LongLive           # casesensative
  ps -ef | grep -i longlive   # not case sensitive
To Stop the service: ::

  systemctl stop longlive.service

Reference
=========
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/sect-managing_services_with_systemd-unit_files

https://github.com/macagua/example.java.helloworld

