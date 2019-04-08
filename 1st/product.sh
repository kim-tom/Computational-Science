#!/bin/bash
FILE="data/product_opt.tsv"
if [ -e $FILE ]; then
    rm $FILE
fi
for ((i=100 ; i<1000 ; i+=100))
do
    echo ${i}
    cat product.c |sed -E 4s/[0-9]+/${i}/g > run.c
    gcc run.c -O0
    ./a.out 2 >> $FILE
done
rm run.c
