#!/bin/bash

execute_scan() {
./bin/lw-scanner evaluate aedifex_hack latest \
    -d=/home/circleci/project/ \
    --scan-library-packages  \
    --tags ci_provider=circleci,user=aedifex
}

i=0
while [ $i -ne 5 ]
do
        i=$(($i+1))
        echo "$i"
        execute_scan
done
