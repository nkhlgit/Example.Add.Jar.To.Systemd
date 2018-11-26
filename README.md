Example.Add.Jar.To.Systemd
=======================

This is Example for a jar file created and added to systemd on Redhat/Centos..

The structure ``LongLivee`` package is like this: ::

  Example.Add.Jar.To.Systemd/
  |-- LongLive
  |   `-- Main.java
  |-- LICENSE
  `-- README.md

Compile class
-------------

For compile the main class for package, execute the follow command: ::

  javac LongLive/Main.java

This generate the ``Main.class`` file into ``LongLive`` directory.

Run class
---------

For run the main class for package, execute the follow command: ::

  java -cp . LongLive.Main

This show the ``Hi`` message.

Create a JAR file
-----------------

For pack the main class for package as a JAR file, execute the follow command: ::

  jar cfe LongLive.jar LongLive.Main LongLive/Main.class


Run a JAR file
--------------

For run the JAR file packed, execute the follow command: ::

  java -jar LongLive.jar

This show the ``Hi meaasae at /tmp/longLiveLog.out`` message.

Reference
=========
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/sect-managing_services_with_systemd-unit_files
