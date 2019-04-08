#!/bin/bash
FILE="data/cache_size.tsv"
if [ -e $FILE ]; then
    rm $FILE
fi
for ((i=4 ; i<2000 ; i+=4)) do
    echo ${i}
    cat cache.c | sed -E 4s/[0-9]+/${i}/g > run.c
    gcc run.c -O0
    ./a.out >> $FILE
done
rm run.c
