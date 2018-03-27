#!/bin/sh

javac -d classes --source-path src --release 8 `find src -name '*.java'`
javac -d classes9 --source-path src9:src9-module --release 9 `find src9 -name '*.java'` src9-module/module-info.java
javac -d classes10 --source-path src10:src10-module --release 10 `find src10 -name '*.java'` src10-module/module-info.java

