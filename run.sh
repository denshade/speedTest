#!/bin/bash
runForLanguage() {
 echo  "running for $1"
	cd $1
	rm -f timing.txt
	rm -f timingRaw.txt
 echo "building for $1"
	bash build.sh
 echo "running tests"
	for i in $(seq 1 10); do 
		bash run.sh 2>> timingRaw.txt
	done
	grep "real" timingRaw.txt > timing.txt
	filename=$(bash version.sh)
echo "copying report to ../reports/$filename"
	cp timing.txt "../reports/$filename"
	cd ..
}

#runForLanguage jscript
#runForLanguage c
runForLanguage java
