#!/bin/sh
TAG=4.3.x
VERSION=4.3.x
DIR=xwiki-javadoc-${VERSION}-new

./javadoc-updatecode.sh ${TAG} ${VERSION} ${DIR}
./javadoc-build.sh ${TAG} ${VERSION} ${DIR}
