#!/bin/sh
TAG=$1
VERSION=$2
DIR=$3

rm -rf ${DIR}/*
mkdir ${DIR}
javadoc  -J-Xmx1500m -d ${DIR} \
 -linkoffline http://velocity.apache.org/tools/releases/1.4/javadoc/ http://velocity.apache.org/tools/releases/1.4/javadoc/ \
 -linkoffline http://docs.oracle.com/javaee/6/api/ http://docs.oracle.com/javaee/6/api/ \
 -linkoffline http://joda-time.sourceforge.net/api-release/ http://joda-time.sourceforge.net/api-release/ \
 -linkoffline http://java.sun.com/javase/6/docs/api/ http://java.sun.com/javase/6/docs/api/ \
 -linkoffline http://commons.apache.org/lang/api-3.1/ http://commons.apache.org/lang/api-3.1/ \
 -classpath ./lib/maven-plugin-annotations-3.1.jar:./lib/maven-plugin-plugin-2.3.jar:./lib/javax.inject-1.jar:./lib/slf4j-api-1.6.4.jar:./lib/xwiki-commons-component-api-4.1.3.jar:./lib/xwiki-commons-properties-4.1.3.jar:./lib/gwt-dev-2.4.0.jar:./lib/gwt-user-2.4.0.jar:./lib/javax.ws.rs-1.0.jar:./lib/xwiki-commons-legacy-component-api-4.1-20120723.181725-99.jar:./lib/infinispan-core-5.1.5.FINAL.jar:./lib/rhq-pluginAnnotations-3.0.4.jar:./lib/joda-time-1.6.jar \
 \@files-new.txt  >> ${DIR}/javadoc.log 2>> ${DIR}/javadoc.log
