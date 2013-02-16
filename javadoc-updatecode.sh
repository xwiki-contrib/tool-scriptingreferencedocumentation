#!/bin/sh
TAG=$1
VERSION=$2
DIR=$3

git clone git@github.com:xwiki/xwiki-platform.git 
cd xwiki-platform
git reset --hard HEAD
git fetch --tags
git checkout stable-${TAG}
git checkout xwiki-platform-${TAG}
git pull --rebase
cd ..
cat xwiki-platform/xwiki-platform-core/xwiki-platform-oldcore/src/main/java/com/xpn/xwiki/internal/MessageToolVelocityContextInitializer.java | sed "s/groovy\.lang\.Singleton/javax\.inject\.Singleton/g" > MessageToolVelocityContextInitializer.java.new
mv MessageToolVelocityContextInitializer.java.new xwiki-platform/xwiki-platform-core/xwiki-platform-oldcore/src/main/java/com/xpn/xwiki/internal/MessageToolVelocityContextInitializer.java
git clone git@github.com:xwiki/xwiki-commons.git 
cd xwiki-commons
git reset --hard HEAD
git fetch --tags
git checkout stable-${TAG}
git checkout xwiki-commons-${TAG}
git pull --rebase
cd ..
git clone git@github.com:xwiki/xwiki-rendering.git 
cd xwiki-rendering
git reset --hard HEAD
git fetch --tags
git checkout stable-${TAG}
git checkout xwiki-rendering-${TAG}
git pull --rebase
cd ..
git clone git@github.com:xwiki/xwiki-enterprise.git 
cd xwiki-enterprise
git reset --hard HEAD
git fetch --tags
git checkout stable-${TAG}
git checkout xwiki-enterprise-${TAG}
git pull --rebase
cd ..
git clone git@github.com:xwiki/xwiki-manager.git 
cd xwiki-manager
git reset --hard HEAD
git fetch --tags
git checkout stable-${TAG}
git checkout xwiki-manager-${TAG}
git pull --rebase
cd ..
cd xwiki-platform/xwiki-platform-core/xwiki-platform-rest/xwiki-platform-rest-model
mvn install
cd ../../../..
cd xwiki-rendering/xwiki-rendering-wikimodel/
rm -rf target
mvn install
cd ../..
find . -name \*.java | grep -v archetype | grep -v "\-test" | grep -v "src/test/java" > files-new.txt
