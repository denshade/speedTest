#!/bin/bash
runForLanguage() {

	cd $1
	rm timing.txt
	rm timingRaw.txt
	bash build.sh
	for i in $(seq 1 10); do 
		bash run.sh 2>> timingRaw.txt
	done
	grep "real" timingRaw.txt > timing.txt
	filename=$(bash version.sh)
	cp timing.txt ../reports/$filename
	cd ..
}

runForLanguage jscript
