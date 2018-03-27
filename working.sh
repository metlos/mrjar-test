#!/bin/sh

javac -d classes --source-path src --release 8 `find src -name '*.java'`
javac -d classes9 --source-path src9 --class-path classes --release 9 `find src9 -name '*.java'`
javac -d classes9 --source-path src:src9-module --release 9 `find src9-module -name '*.java'`
javac -d classes10 --source-path src10 --class-path classes --release 10 `find src10 -name '*.java'`
javac -d classes10 --source-path src:src10-module --release 10 `find src10-module -name '*.java'`

jar -cf mr.jar -C classes . --release 9 -C classes9 . --release 10 -C classes10 .

