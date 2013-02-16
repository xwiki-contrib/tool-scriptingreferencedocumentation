#!/bin/sh
export MAVEN_OPTS="-Xmx1012m -XX:MaxPermSize=198m"
mvn javadoc:aggregate
