#!/bin/bash

ME=$(whoami)
WORKSPACE=/Users/bob/workspace
SCALA_VERSION=2.11

echo "Starting osx-usage-stats"
cd $WORKSPACE/osx-usage-stats
sudo bash install.sh

echo "Starting vm"
cd $WORKSPACE/vmstats-turbinedb/daemon
sudo bash install.sh

echo "Starting turbineDB"
cd $WORKSPACE/turbinedb/target/scala-$SCALA_VERSION
/usr/bin/java -jar turbine-db_$SCALA_VERSION-0.1-one-jar.jar &
