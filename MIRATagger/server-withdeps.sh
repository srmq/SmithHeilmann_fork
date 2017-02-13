#!/usr/bin/env bash

#script to run the SST as a socket server on port 5557
#The server takes pre-tagged, tokenized, and lemmatized sentences
#in the following format, with blank lines between sentences:
#word1 (tab) pos1
#word2 (tab) pos2

DIRNAME=`dirname $0`

java -Xmx500m -cp $DIRNAME/target/SupersenseTagger-0.0.1-SNAPSHOT-jar-with-dependencies.jar:$DIRNAME/lib/stanford-postagger-2009-12-24.jar edu.cmu.ark.SuperSenseTaggerServer \
 --model $DIRNAME/models/superSenseModelAllSemcor.ser.gz --port 5557 \
 --properties $DIRNAME/tagger.properties --debug

