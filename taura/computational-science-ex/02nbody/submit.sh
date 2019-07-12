#!/bin/bash
#PBS -q u-lecture
#PBS -l select=1:ncpus=1:mpiprocs=1:ompthreads=36
#PBS -W group_list=gt23
#PBS -l walltime=0:05:00
#PBS -S /bin/bash
#PBS -j oe
#PBS -o done.txt

# 使い方
# 実行したいコマンドを ============= の下に書いて,
# reedbush-u1$ ./submit.sh
# または
# reedbush-u1$ ./submit.sh コマンド

# 注意:
# 授業時間外は2行目の -q u-lecture4 を -q u-lecture に変更
# 2ノード以上使いたければ -> select=1 のところを変更
# 5分以上走らせたければ ->  walltime=0:05:00 のところを変更
# 実行されるコマンドを変えたければ以下の =============== の下を変更

done_txt=done.txt
log_txt=log.txt

batch_main() {
    if [ "$CMDLINE" = "" ] ; then
	# 実行したいコマンドをここへ書く (または ./submit.sh コマンド とする)
	# perf stat -e cycles -e ref-cycles hostname
	# =========================
	perf stat ./exe/nbody_seq.exe -n 8192 > seq.res
        perf stat ./exe/nbody_ilp.exe -n 8192 > ilp.res
        perf stat ./exe/nbody_mp.exe -n 8192 > mp.res
    else
	$CMDLINE
    fi
}

wait_finish() {
    status=QUEUED
    c=0
    while true ; do
	if [ $((${c} % 10)) == 0 ] ; then
	    if [ ${c} -gt 0 ]; then echo ; fi
	    rbstat ${jobid}
	fi
	if rbstat ${jobid} | grep ${jobid} | grep ${status} > /dev/null ; then
	    echo -n .
	    sleep 1
	else
	    if [ ${status} = "QUEUED" ] ; then
		status=RUNNING
	    else
		break
	    fi
	fi
	c=$((${c} + 1))
    done
}

if [ "$PBS_JOBNAME" = "" ] ; then
    rm -f ${done_txt} ${log_txt}
    cd $(realpath .)
    if [ "$1" = "" ] ; then
	jobid=$(qsub $0 | grep -o -E '[0-9]+\.reedbush\-pbsadmin0' | cut -d '.' -f 1)
    else
	jobid=$(qsub -v CMDLINE="$*" $0 | grep -o -E '[0-9]+\.reedbush\-pbsadmin0' | cut -d '.' -f 1)
    fi
    if [ "$jobid" != "" ]; then
	wait_finish
    fi
    cat ${log_txt}
else
    cd ${PBS_O_WORKDIR}
    batch_main > ${log_txt} 2>&1
fi
