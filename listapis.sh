#/bin/sh

find . -name \*.java -exec grep -r -B2 "implements.*ScriptContextInitializer" {} \; | grep -v Singleton 
find . -name \*.java -exec grep -r -B2 "implements.*VelocityConfiguration" {}  \; | grep -v Singleton 
find . -name \*.java -exec grep -r -B2 "implements.*VelocityContextInitializer" {} \; | grep -v Singleton 
find . -name \*.java -exec grep -r -B2 "implements.*ScriptService" {} \; | grep -v Singleton 
