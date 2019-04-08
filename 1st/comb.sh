#!bin/bash
FILES=("data/ijk.tsv" "data/ikj.tsv" "data/jik.tsv" "data/jki.tsv" "data/kij.tsv" "data/kji.tsv")
index=()
t=0
for FILE in ${FILES[@]}; do
    t=$((t+1))
    if [ -e $FILE ]; then
        rm $FILE
    fi
    echo $FILE
    for ((i=100 ; i<1001 ; i+=100))
    do
        echo ${i}
        cat comb.c |sed -E 4s/[0-9]+/${i}/g > run.c
        gcc run.c -O0
        ./a.out $t >> $FILE
    done
done
rm run.c
