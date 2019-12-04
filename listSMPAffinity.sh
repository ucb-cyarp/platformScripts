#!/bin/bash

IRQ_DIR="/proc/irq"

IRQ_DIRS=`ls -A -1 ${IRQ_DIR} | sort -n` #Numeric sort is -n. -A forces . and .. to not be returned. -1 returns one file per line

for dir in ${IRQ_DIRS} ; do
    FULL_PATH_DIR="${IRQ_DIR}/${dir}"
    if [[ -d ${FULL_PATH_DIR} ]] ; then
        IRQ_INTERNAL_LS=`ls -A -1 ${FULL_PATH_DIR}`
        IRQ_NAME=""
        for file in ${IRQ_INTERNAL_LS} ; do
            if [[ -d "${FULL_PATH_DIR}/${file}" ]] ; then
                IRQ_NAME="${IRQ_NAME}${file}"
            fi
        done
        if [[ -z ${IRQ_NAME} ]] ; then
            IRQ_NAME="?"
        fi
        SMP_AFFINITY=`cat ${FULL_PATH_DIR}/smp_affinity`
        SMP_AFFINITY_LIST=`cat ${FULL_PATH_DIR}/smp_affinity_list`
        printf "%3s: %20s | %20s | %s\n" ${dir} ${IRQ_NAME} ${SMP_AFFINITY_LIST} ${SMP_AFFINITY}
    fi
done