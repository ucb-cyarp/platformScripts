#!/bin/bash

IRQ_DIR="/proc/irq"

LOW_IRQ_LIMIT=20 #Only Modify IRQs from this and up
NEW_MASK="00000000,00000000,00000000,00000003" #Mask is 1-hot encoded

IRQ_DIRS=`ls -A -1 ${IRQ_DIR} | sort -n` #Numeric sort is -n. -A forces . and .. to not be returned. -1 returns one file per line

echo "Tgt Mask: ${NEW_MASK}"

for dir in ${IRQ_DIRS} ; do
    #Check that dir is >= LOW_IRQ_LIMIT
    if [[ "dir" -ge "${LOW_IRQ_LIMIT}" ]] ; then
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

            SMP_AFFINITY_BEFORE=`cat ${FULL_PATH_DIR}/smp_affinity`
            echo "${NEW_MASK}" > ${FULL_PATH_DIR}/smp_affinity 2> /dev/null

            if [[ $? -eq 0 ]] ; then
                SMP_AFFINITY_AFTER=`cat ${FULL_PATH_DIR}/smp_affinity`
                printf "Success Updating %3s: %20s %s -> %s\n" ${dir} ${IRQ_NAME} ${SMP_AFFINITY_BEFORE} ${SMP_AFFINITY_AFTER}
            else
                SMP_AFFINITY_AFTER=`cat ${FULL_PATH_DIR}/smp_affinity`
                printf "Failure Updating %3s: %20s %s -> %s\n" ${dir} ${IRQ_NAME} ${SMP_AFFINITY_BEFORE} ${SMP_AFFINITY_AFTER}
            fi
        fi
    fi
done