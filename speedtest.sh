#!/bin/sh

if [[ ! -e ~/speedtest/results.csv ]]; then
    mkdir -p ~/speedtest
    touch ~/speedtest/results.csv
else
    cp /dev/null ~/speedtest/results.csv
fi

speedtest-cli --csv-header >> ~/speedtest/results.csv

COUNTER=0
MAX_EXECUTIONS=50

while [  $COUNTER -lt $MAX_EXECUTIONS ]; do
    echo "Start speedtest number ${COUNTER} ..."
    speedtest-cli --csv >> ~/speedtest/results.csv
    echo "-------------------------------------"
    echo "########## FINISHED #################"
    echo "-------------------------------------"
    echo ""
    echo "Next round in 30 minutes ..."
    echo ""
    let COUNTER=COUNTER+1
    sleep 1800
done
