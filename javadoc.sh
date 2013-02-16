#!/bin/sh
TAG=4.5.x
VERSION=4.5.x
DIR=xwiki-javadoc-${VERSION}-new

./javadoc-updatecode.sh ${TAG} ${VERSION} ${DIR}
./listapis.sh > apis-${VERSION}.txt
./javadoc-build.sh ${TAG} ${VERSION} ${DIR}
