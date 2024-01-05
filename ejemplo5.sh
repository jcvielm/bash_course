#!/bin/bash
for i in {1..5}
do
    if [[ $i == 2 ]]; then
        continue;
    else
        echo "$i"
    fi
done
