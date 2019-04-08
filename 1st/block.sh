#!/bin/bash
FILE="data/block_size.tsv"
if [ -e $FILE ]; then
    rm $FILE
fi
for ((i=1 ; i<1000 ; i+=1))
do
    echo ${i}
    cat block.c |sed -E 3s/[0-9]+/${i}/g > run.c
    gcc run.c -O0
    ./a.out >> $FILE
done
rm run.c
